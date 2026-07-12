.class final Lcom/android/server/ambientcontext/RemoteWearableSensingService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteWearableSensingService.java"

# interfaces
.implements Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/wearable/IWearableSensingService;",
        ">;",
        "Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$78viJEdbMZeaa9x-f8VV5ivADiE(Ljava/lang/String;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 73
    invoke-interface {p1, p0}, Landroid/service/wearable/IWearableSensingService;->stopDetection(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7lWrVbrBTcvtbPYMtHP0pAsqK0I(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 66
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/service/wearable/IWearableSensingService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OaVy2yFZ9Nf_FCHOj04qm1h8d9g([ILjava/lang/String;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 82
    invoke-interface {p3, p0, p1, p2}, Landroid/service/wearable/IWearableSensingService;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 8

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wearable.WearableSensingService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda0;-><init>()V

    const v5, 0x4001000

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 46
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 52
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 81
    sget-object v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query status for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;-><init>([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 65
    sget-object v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start detection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;-><init>(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public stopDetection(Ljava/lang/String;)V
    .locals 3

    .line 72
    sget-object v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop detection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public unbind()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method
