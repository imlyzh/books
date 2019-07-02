<TeXmacs|1.99.10>

<style|<tuple|generic|chinese>>

<\body>
  <\with|font-family|retina>
    <\with|font|roman>
      <\with|font-base-size|12>
        <doc-data|<doc-title|Static Typed Python
        Draft>|<doc-author|<author-data|<author-name|LYZH\<#6D41\>\<#4E91\>\<#5760\>\<#6D77\>>|<\author-affiliation>
          <slink|https://github.com/Zhihang-Liu>
        </author-affiliation>>>>

        <with|font-base-size|10|>
      </with>

      \;

      <section|Introduction>

      <subparagraph|Why\<#FF1F\>>

      <space|2em>\<#5728\>\<#4F7F\>\<#7528\>Python\<#7684\>\<#8FC7\>\<#7A0B\>\<#4E2D\>\<#FF0C\>\<#6211\>\<#610F\>\<#8BC6\>\<#5230\>\<#4E86\>\<#52A8\>\<#6001\>\<#7C7B\>\<#578B\>\<#7684\>\<#5371\>\<#9669\>\<#6027\>\<#FF1A\>\<#88AB\>\<#6EE5\>\<#7528\>\<#7684\>None\<#3001\>\<#7531\>\<#4E8E\>\<#758F\>\<#6F0F\>\<#5BFC\>\<#81F4\>\<#7684\>TypeError\<#FF0C\>\<#4E0D\>\<#5728\>\<#7F16\>\<#8BD1\>\<#671F\>\<#68C0\>\<#67E5\>\<#7684\>\<#51FD\>\<#6570\>\<#7B7E\>\<#540D\>\<#FF0C\>\<#4E0D\>\<#68C0\>\<#67E5\>\<#968F\>\<#5904\>\<#6254\>\<#7684\>\<#5F02\>\<#5E38\><text-dots>\<#8FD9\>\<#4E9B\>\<#90FD\>\<#8BA9\>\<#6211\>\<#611F\>\<#5230\>\<#6050\>\<#60E7\>\<#FF0C\>\<#56E0\>\<#4E3A\>\<#5BF9\>\<#4E8E\>\<#4E00\>\<#4E2A\>\<#826F\>\<#597D\>\<#8BBE\>\<#8BA1\>\<#7684\>\<#8BED\>\<#8A00\>\<#6765\>\<#8BF4\>\<#FF0C\>\<#5E94\>\<#8BE5\>\<#4FDD\>\<#8BC1\>\<#7528\>\<#6237\>\<#5C3D\>\<#91CF\>\<#5C11\>\<#72AF\>\<#9519\>\<#8BEF\>\<#FF0C\>\<#800C\>\<#5305\>\<#62EC\>TypeError\<#5728\>\<#5185\>\<#7684\>\<#8FD9\>\<#4E00\>\<#7CFB\>\<#5217\>\<#9519\>\<#8BEF\>\<#FF0C\>\<#90FD\>\<#662F\>\<#4E0D\>\<#5E94\>\<#8BE5\>\<#5B58\>\<#5728\>\<#7684\>\<#3002\>\<#67D0\>\<#4E9B\>\<#9759\>\<#6001\>\<#8BED\>\<#8A00\>\<#751A\>\<#81F3\>\<#80FD\>\<#591F\>\<#901A\>\<#8FC7\>\<#51FD\>\<#6570\>\<#7684\>\<#7C7B\>\<#578B\>\<#7B7E\>\<#540D\>\<#786E\>\<#8BA4\>\<#51FD\>\<#6570\>\<#7684\>\<#4F5C\>\<#7528\>\<#3002\>\<#8FD9\>\<#4E00\>\<#5207\>\<#90FD\>\<#662F\>\<#6211\>\<#8BA4\>\<#4E3A\>Python\<#9700\>\<#8981\>\<#62E5\>\<#6709\>\<#7684\>\<#3002\>Python\<#9700\>\<#8981\>\<#4E00\>\<#4E2A\>\<#7C7B\>\<#578B\>\<#7CFB\>\<#7EDF\>\<#3002\>

      <\remark*>
        \;

        <\itemize>
          <item>\<#6709\>\<#7C7B\>\<#578B\>\<#4E0D\>\<#7B49\>\<#4E8E\>\<#6709\>\<#7C7B\>\<#578B\>\<#7CFB\>\<#7EDF\>\<#FF0C\>\<#5982\>\<#679C\>\<#4F60\>\<#6CA1\>\<#6709\>\<#5F04\>\<#6E05\>\<#695A\>\<#8FD9\>\<#4E00\>\<#70B9\>\<#FF0C\>\<#8BF7\>\<#70B9\>\<#51FB\>\<#5DE6\>\<#4E0A\>\<#89D2\>\|\<#53F3\>\<#4E0A\>\<#89D2\>\<#5173\>\<#6389\>\<#8FD9\>\<#7BC7\>\<#6587\>\<#7AE0\>\<#3002\>

          <item>\<#5927\>\<#591A\>\<#6570\>\<#4EBA\>\<#8BA4\>\<#4E3A\>\<#5305\>\<#62EC\>Python\<#5728\>\<#5185\>\<#7684\>\<#52A8\>\<#6001\>\<#8BED\>\<#8A00\>\<#662F\>\<#6709\>\<#7C7B\>\<#578B\>\<#7CFB\>\<#7EDF\>\<#7684\>\<#3002\>\<#6211\>\<#4F1A\>\<#5728\>\<#540E\>\<#6587\>\<#8BB2\>\<#8FF0\>\<#6211\>\<#5728\>\<#8FD9\>\<#4E2A\>\<#4E0A\>\<#4E0B\>\<#6587\>\<#4E2D\>\<#8BF4\>Python\<#6CA1\>\<#6709\>\<#7C7B\>\<#578B\>\<#7CFB\>\<#7EDF\>\<#7684\>\<#7406\>\<#7531\>\<#3002\>
        </itemize>
      </remark*>

      <subparagraph|\<#53CD\>\<#5BF9\>\<#8005\>\<#7684\>\<#7406\>\<#7531\>\<#FF0C\>\<#4EE5\>\<#53CA\>\<#89E3\>\<#51B3\>\<#65B9\>\<#6848\>>
    </with>
  </with>

  <space|2em>\<#6BCF\>\<#5F53\>\<#6709\>\<#4EBA\>\<#8BD5\>\<#56FE\>\<#7ED9\>\<#52A8\>\<#6001\>\<#8BED\>\<#8A00\>\<#52A0\>\<#4E0A\><math|>
</body>

<\initial>
  <\collection>
    <associate|font|roman>
    <associate|font-family|rm>
    <associate|math-font|roman>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-4|<tuple|1|?>>
    <associate|auto-7|<tuple|4|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      Why\<#FF1F\> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>

      \<#53CD\>\<#5BF9\>\<#8005\>\<#7684\>\<#7406\>\<#7531\>\<#FF0C\>\<#4EE5\>\<#53CA\>\<#89E3\>\<#51B3\>\<#65B9\>\<#6848\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.15fn>
    </associate>
  </collection>
</auxiliary>