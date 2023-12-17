<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="backprop_syn" top="backprop">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="../../local_support.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../../../common/harness.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../../../common/support.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../../../common/support.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="local_support.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="check.data" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="input.data" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="backprop.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution" status=""/>
    </solutions>
</AutoPilot:project>

