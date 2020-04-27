---
layout: default
title: Solutions with Explanation
---

<script defer src="https://code.jquery.com/jquery-3.4.1.slim.min.js" crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script defer src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" crossorigin="anonymous"></script>

<script defer src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.js" crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/contrib/auto-render.min.js" onload="renderMathInElement(document.body);" crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/uikit@3.4.2/dist/js/uikit.min.js" crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/uikit@3.4.2/dist/js/uikit-icons.min.js" crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/mermaid@8.5.0/dist/mermaid.min.js" crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js" onload='Array.prototype.forEach.call(document.getElementsByClassName("chartjs"), function(element) { new Chart(element, JSON.parse(element.innerHTML)); })' crossorigin="anonymous"></script>

[![GitHub Pages](https://github.com/laitingsheng/Specialised-Programming/workflows/GitHub%20Pages/badge.svg)](https://github.com/laitingsheng/Specialised-Programming)
[![Generator](https://github.com/UoA-SP-2020-Sem-1-Group-7/Generator/workflows/Generator/badge.svg)](https://github.com/UoA-SP-2020-Sem-1-Group-7/Generator)
[![codecov](https://codecov.io/gh/UoA-SP-2020-Sem-1-Group-7/Generator/branch/master/graph/badge.svg)](https://codecov.io/gh/UoA-SP-2020-Sem-1-Group-7/Generator)

---

[![CPP](https://github.com/UoA-SP-2020-Sem-1-Group-7/CPP/workflows/CPP/badge.svg)](https://github.com/UoA-SP-2020-Sem-1-Group-7/CPP)
[![codecov](https://codecov.io/gh/UoA-SP-2020-Sem-1-Group-7/CPP/branch/master/graph/badge.svg)](https://codecov.io/gh/UoA-SP-2020-Sem-1-Group-7/CPP)
[![Kotlin](https://github.com/UoA-SP-2020-Sem-1-Group-7/Kotlin/workflows/Kotlin/badge.svg)](https://github.com/UoA-SP-2020-Sem-1-Group-7/Kotlin)
[![codecov](https://codecov.io/gh/UoA-SP-2020-Sem-1-Group-7/Kotlin/branch/master/graph/badge.svg)](https://codecov.io/gh/UoA-SP-2020-Sem-1-Group-7/Kotlin)
[![Python](https://github.com/UoA-SP-2020-Sem-1-Group-7/Python/workflows/Python/badge.svg)](https://github.com/UoA-SP-2020-Sem-1-Group-7/Python)
[![codecov](https://codecov.io/gh/UoA-SP-2020-Sem-1-Group-7/Python/branch/master/graph/badge.svg)](https://codecov.io/gh/UoA-SP-2020-Sem-1-Group-7/Python)

---

{: #specification-detail}
## Language Version & Toolkit

{: #specification-tab .uk-tab data-uk-switcher="{connect:'specification'\}"}
* {: .uk-active}[C++](#)
* [Kotlin](#)
* [Python](#)

{: #specification .uk-switcher .uk-margin }
* C++17, compiled with GCC 9 & Boost Library 1.67, tested with Boost.Test
* Kotlin, compiled with Kotlin 1.3.72 (API version 1.1 for compatibility with web submission system), tested with JUnit 5
* Python 3.8, by official CPython interpreter

{% for config in site.data.config %}

---

{: #{{ config.className }}}
## [{{ config.className }}]({{ config.url }})

{% include {{ config.index }}.md %}

{: #{{ config.className }}-code}
### Code

{: #{{ config.className }}-tab .uk-tab data-uk-switcher="{connect:'{{ config.className }}-code-snippet'\}"}
* {: .uk-active}[C++](#)
* [Kotlin](#)
* [Python](#)

<ul id="{{ config.className }}-code-snippet'}" class="uk-switcher uk-margin">
    <li>{% highlight c++ %}{% include_relative CPP/include/{{ config.index }}.hpp %}{% endhighlight %}</li>
    <li>{% highlight kotlin %}{% include_relative Kotlin/src/main/{{ config.index }}/{{ config.className }}.kt %}{% endhighlight %}</li>
    <li>{% highlight python %}{% include_relative Python/src/sp/_{{ config.index }}.py %}{% endhighlight %}</li>
</ul>

{: #{{ config.className }}-complexity}
### Complexity

{% include {{ config.index }}_complexity.md %}

{% endfor %}
