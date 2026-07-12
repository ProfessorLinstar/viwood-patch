.class public Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;
.super Ljava/lang/Object;
.source "InternalCleanupClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmCurrentTask(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    .line 77
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getUnknownHALTemplates()Ljava/util/List;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate onClientFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", success: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Biometrics/InternalCleanupClient"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " templates for deletion"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 85
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmUnknownHALTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmCurrentTask(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;-><init>(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 85
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmUnknownHALTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_3

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmFavorHalEnrollments(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 98
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmUnknownHALTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding unknown HAL template: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 100
    invoke-virtual {v5}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    iget v5, v3, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mUserId:I

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->onAddUnknownTemplate(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 105
    throw p1

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$mstartCleanupUnknownHalTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V

    .line 111
    :goto_3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    iget-object p2, p1, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/android/server/biometrics/sensors/BiometricUtils;->hasValidBiometricUserState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 113
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->handleInvalidBiometricState()V

    :cond_5
    return-void
.end method
