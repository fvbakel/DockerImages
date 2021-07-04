FROM adoptopenjdk:11-jdk-hotspot as build

ENV KOTLIN_NATIVE_VERSION=1.5.20

RUN cd /opt && curl -L https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_NATIVE_VERSION}/kotlin-native-linux-${KOTLIN_NATIVE_VERSION}.tar.gz | tar -xz
RUN ln -sf /opt/kotlin-native-linux-${KOTLIN_NATIVE_VERSION} /opt/kotlin-native
RUN /opt/kotlin-native/bin/kotlinc-native --check_dependencies && rm -rf /root/.konan/cache

ENV PATH $PATH:/opt/kotlin-native/bin

# Workaround for missing lib
RUN ln -s /usr/lib/x86_64-linux-gnu/libtinfo.so.6 /usr/lib/x86_64-linux-gnu/libtinfo.so.5

ENTRYPOINT ["/opt/kotlin-native/bin/kotlinc-native"]