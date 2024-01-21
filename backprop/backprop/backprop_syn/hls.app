<project xmlns="com.autoesl.autopilot.project" name="backprop_syn" top="backprop">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags=""/>
    </Simulation>
    <files xmlns="">
        <file name="../../local_support.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../../../common/harness.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../../../common/support.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../../../common/support.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="local_support.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="check.data" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="input.data" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="backprop.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution" status="active"/>
    </solutions>
</project>

