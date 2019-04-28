FROM carlyishere/stk_cis:updated1

ARG LDLIBRARYPATH=/home/stk11.5.0/bin:$LDLIBRARYPATH
ENV LD_LIBRARY_PATH=$LDLIBRARYPATH
ARG STKINSTALLDIR=/home/stk11.5.0
ENV STK_INSTALL_DIR=$STKINSTALLDIR
ARG STKCONFIGDIR=/home/user_info/STK11
ENV STK_CONFIG_DIR=$STKCONFIGDIR
ARG JAVAHOME=/usr/lib/jvm/java-11-oracle
ENV JAVA_HOME=$JAVAHOME

ARG ANTHOME=/home/ANT/ANT
ENV ANT_HOME=$ANTHOME
ARG PATHH=${ANT_HOME}/bin:${JAVA_HOME}/bin:${PATH}
ENV PATH=$PATHH

CMD /home/ANT/ANT/bin/ant -buildfile /home/stk11.5.0/CodeSamples/CustomApplications/Java/AWT_STK_X_GfxAnalysis_SolarPanelTool
CMD /home/stk11.5.0/CodeSamples/CustomApplications/Java/AWT_STK_X_GfxAnalysis_SolarPanelTool ant run
