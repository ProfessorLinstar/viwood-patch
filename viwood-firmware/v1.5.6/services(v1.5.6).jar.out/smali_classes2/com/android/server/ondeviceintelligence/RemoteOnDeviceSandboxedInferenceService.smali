.class public Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteOnDeviceSandboxedInferenceService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;",
        ">;"
    }
.end annotation


# static fields
.field public static final LONG_TIMEOUT:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;->LONG_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 8

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.ondeviceintelligence.OnDeviceSandboxedInferenceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService$$ExternalSyntheticLambda0;-><init>()V

    const v5, 0x4001000

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 54
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 60
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public getAutoDisconnectTimeoutMs()J
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    .line 71
    const-string/jumbo v3, "on_device_inference_unbind_timeout_ms"

    invoke-static {v0, v3, v1, v2, p0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestTimeoutMs()J
    .locals 2

    .line 65
    sget-wide v0, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;->LONG_TIMEOUT:J

    return-wide v0
.end method
