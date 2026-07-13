.class public abstract Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "InternalEnumerateClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnumerateConsumer;


# instance fields
.field public final mEnrolledIdsFrameworkArray:[I

.field public final mEnrolledIdsHalList:Ljava/util/List;

.field public mEnrolledList:Ljava/util/List;

.field public final mInitialEnrolledSize:I

.field public mIsDanglingFramework:Z

.field public mIsDanglingHal:Z

.field public mUnknownHALTemplates:Ljava/util/List;

.field public mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 62
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsHalList:Ljava/util/List;

    move-object/from16 p1, p6

    .line 65
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    move-object/from16 p2, p7

    .line 67
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 69
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsFrameworkArray:[I

    const/4 p1, 0x0

    .line 70
    :goto_0
    iget p2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    if-ge p1, p2, :cond_0

    .line 71
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsFrameworkArray:[I

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result p3

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final doTemplateCleanup()V
    .locals 8

    .line 128
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    const-string v1, "Biometrics/InternalEnumerateClient"

    if-nez v0, :cond_0

    .line 129
    const-string p0, "Null enrolledList"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 136
    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 137
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 138
    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doTemplateCleanup(): Removing dangling template from framework: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 142
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v7

    .line 141
    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/biometrics/sensors/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    const/4 v6, 0x2

    .line 145
    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 143
    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnUnEnrolled(III)V

    .line 146
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/log/BiometricLogger;->logUnknownEnrollmentInFramework()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->sendDanglingNotification(Ljava/util/List;)V

    .line 153
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public abstract getModality()I
.end method

.method public getProtoEnum()I
    .locals 0

    .line 0
    const/4 p0, 0x6

    return p0
.end method

.method public getUnknownHALTemplates()Ljava/util/List;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    return-object p0
.end method

.method public final handleEnumeratedTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 5

    .line 106
    const-string v0, "Biometrics/InternalEnumerateClient"

    if-nez p1, :cond_0

    .line 107
    const-string p0, "Null identifier"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnumeratedTemplate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    .line 112
    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 121
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Matched: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final listToArray(Ljava/util/List;)[I
    .locals 3

    .line 174
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 175
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 177
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final logEnumerationResult()V
    .locals 4

    .line 158
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mIsDanglingFramework:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mIsDanglingHal:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 162
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mIsDanglingHal:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsHalList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->listToArray(Ljava/util/List;)[I

    move-result-object v1

    .line 169
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v2

    .line 170
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsFrameworkArray:[I

    .line 169
    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnEnumerated(II[I[I)V

    return-void
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsHalList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->handleEnumeratedTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    if-nez p2, :cond_1

    .line 84
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mIsDanglingHal:Z

    .line 85
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mIsDanglingFramework:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->doTemplateCleanup()V

    .line 87
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->logEnumerationResult()V

    .line 88
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_1
    return-void
.end method

.method public sendDanglingNotification(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDanglingNotification(): initial enrolledSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", after clean up size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v1, "Biometrics/InternalEnumerateClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getModality()I

    move-result p0

    .line 195
    invoke-static {v1, p1, v0, p0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showBiometricReEnrollNotification(Landroid/content/Context;Ljava/util/List;ZI)V

    :cond_1
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    return-void
.end method

.method public unableToStart()V
    .locals 0

    .line 0
    return-void
.end method
