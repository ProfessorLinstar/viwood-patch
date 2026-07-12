.class public interface abstract Lcom/android/server/biometrics/sensors/BiometricServiceProvider;
.super Ljava/lang/Object;
.source "BiometricServiceProvider.java"


# virtual methods
.method public abstract containsSensor(I)Z
.end method

.method public abstract dumpInternal(ILjava/io/PrintWriter;)V
.end method

.method public abstract dumpProtoMetrics(ILjava/io/FileDescriptor;)V
.end method

.method public abstract dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
.end method

.method public abstract getAuthenticatorId(II)J
.end method

.method public abstract getLockoutModeForUser(II)I
.end method

.method public abstract getSensorProperties(I)Landroid/hardware/biometrics/SensorPropertiesInternal;
.end method

.method public abstract getSensorProperties()Ljava/util/List;
.end method

.method public abstract hasEnrollments(II)Z
.end method

.method public abstract isHardwareDetected(I)Z
.end method
