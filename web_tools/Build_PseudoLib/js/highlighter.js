window.SyntaxHighlighter = function(textarea) {
    var self = this;
    this.textarea = textarea;
    this.container = textarea.parentElement;

    var overlay = document.createElement('div');
    overlay.className = 'editor-highlight';
    overlay.setAttribute('aria-hidden', 'true');
    this.overlay = overlay;
    this.container.insertBefore(overlay, textarea);

    var cs = getComputedStyle(textarea);
    overlay.style.paddingTop = cs.paddingTop;
    overlay.style.paddingBottom = cs.paddingBottom;
    overlay.style.paddingLeft = cs.paddingLeft;
    overlay.style.paddingRight = cs.paddingRight;
    overlay.style.fontFamily = cs.fontFamily;
    overlay.style.fontSize = cs.fontSize;
    overlay.style.lineHeight = cs.lineHeight;
    overlay.style.tabSize = cs.tabSize;
    overlay.style.letterSpacing = cs.letterSpacing;

    var lh = parseFloat(cs.lineHeight) || 20;
    var pt = parseFloat(cs.paddingTop) || 0;
    this._lh = lh;
    this._pt = pt;

    textarea.style.background = 'transparent';
    textarea.style.color = 'transparent';

    this._text = '';
    this._pending = false;

    textarea.addEventListener('scroll', function() {
        overlay.scrollTop = this.scrollTop;
        overlay.scrollLeft = this.scrollLeft;
        self._requestRender();
    });

    var inputTimer = null;
    textarea.addEventListener('input', function() {
        clearTimeout(inputTimer);
        inputTimer = setTimeout(function() { self._requestRender(); }, 50);
    });
};

window.SyntaxHighlighter.prototype = {
    render: function() {
        this._requestRender();
    },

    _requestRender: function() {
        if (this._pending) return;
        this._pending = true;
        var self = this;
        requestAnimationFrame(function() { self._doRender(); });
    },

    _doRender: function() {
        this._pending = false;
        var ta = this.textarea;
        var text = ta.value;
        var scrollTop = ta.scrollTop;
        var scrollLeft = ta.scrollLeft;

        if (text === this._text && scrollTop === this._lastTop && scrollLeft === this._lastLeft) return;

        this._text = text;
        this._lastTop = scrollTop;
        this._lastLeft = scrollLeft;

        var lines = text.split('\n');
        var lh = this._lh;
        var pt = this._pt;
        var clientH = ta.clientHeight;
        var buffer = 30;

        var startLine = Math.max(0, Math.floor((scrollTop - pt) / lh) - buffer);
        var endLine = Math.min(lines.length, Math.ceil((scrollTop - pt + clientH) / lh) + buffer);

        if (startLine >= endLine) {
            endLine = Math.min(lines.length, startLine + 1);
        }

        var sb = [];
        var beforeH = startLine * lh;
        if (beforeH > 0) sb.push('<div style="height:' + beforeH + 'px;min-height:' + beforeH + 'px"></div>');
        for (var i = startLine; i < endLine; i++) {
            sb.push('<div class="hl-line">' + this._highlightLine(lines[i]) + '</div>');
        }
        var afterH = (lines.length - endLine) * lh;
        if (afterH > 0) sb.push('<div style="height:' + afterH + 'px;min-height:' + afterH + 'px"></div>');

        this.overlay.innerHTML = sb.join('');
    },

    _highlightLine: function(line) {
        if (!line) return '&nbsp;';
        var html = this._escapeHtml(line);

        html = html.replace(/(\/\/\/[^<]*)$/gm, '<span class="hl-spec">$1</span>');
        html = html.replace(/(\/\/[^<]*)$/gm, '<span class="hl-comment">$1</span>');
        html = html.replace(/(&quot;(?:[^&\\]|\\.)*&quot;)/g, '<span class="hl-string">$1</span>');
        html = html.replace(/\b(\d+(?:\.\d+)?)\b/g, '<span class="hl-number">$1</span>');

        html = html.replace(/\b(Funcion|Subproceso)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(FinFuncion|FinSubproceso)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(Algoritmo|FinAlgoritmo)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(Si|Entonces|Sino|FinSi)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(Mientras|FinMientras|Hacer)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(Para|Hasta|Con_Paso|FinPara)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(Repetir|Hasta_Que)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(Segun|FinSegun|Caso|De_Otro_Modo)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(Definir|Dimension|Como)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(Escribir|Leer|Borrar|Limpiar_Pantalla)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(Verdadero|Falso)\b/gi, '<span class="hl-kw">$1</span>');
        html = html.replace(/\b(Y|O|No|Mod|Div)\b/gi, '<span class="hl-kw">$1</span>');

        return html;
    },

    _escapeHtml: function(str) {
        return str.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
    }
};
