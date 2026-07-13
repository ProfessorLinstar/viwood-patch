.class public Lcom/android/server/contentprotection/RemoteContentProtectionService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteContentProtectionService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/contentcapture/IContentProtectionService;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mAutoDisconnectTimeoutMs:J

.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$4pJFpBHXwZcyXLAFde7jBJeRrJg(Landroid/service/contentcapture/IContentProtectionAllowlistCallback;Landroid/service/contentcapture/IContentProtectionService;)V
    .locals 0

    .line 86
    invoke-interface {p0}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentProtectionService;->onUpdateAllowlistRequest(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T0-cgXoXI5IFkEYd-ja6ndBR-5Y(Landroid/content/pm/ParceledListSlice;Landroid/service/contentcapture/IContentProtectionService;)V
    .locals 0

    .line 81
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentProtectionService;->onLoginDetected(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/android/server/contentprotection/RemoteContentProtectionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IZJ)V
    .locals 8

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.contentcapture.ContentProtectionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    if-eqz p4, :cond_0

    const/high16 p4, 0x400000

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_0
    const/4 p4, 0x0

    goto :goto_0

    .line 56
    :goto_1
    new-instance v7, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda0;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 59
    iput-object p2, v2, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mComponentName:Landroid/content/ComponentName;

    .line 60
    iput-wide p5, v2, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mAutoDisconnectTimeoutMs:J

    return-void
.end method


# virtual methods
.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mAutoDisconnectTimeoutMs:J

    return-wide v0
.end method

.method public onLoginDetected(Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    .line 37
    check-cast p1, Landroid/service/contentcapture/IContentProtectionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentprotection/RemoteContentProtectionService;->onServiceConnectionStatusChanged(Landroid/service/contentcapture/IContentProtectionService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/service/contentcapture/IContentProtectionService;Z)V
    .locals 2

    .line 71
    sget-object p1, Lcom/android/server/contentprotection/RemoteContentProtectionService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection status for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " changed to: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 76
    const-string p0, "connected"

    goto :goto_0

    :cond_0
    const-string p0, "disconnected"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdateAllowlistRequest(Landroid/service/contentcapture/IContentProtectionAllowlistCallback;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;-><init>(Landroid/service/contentcapture/IContentProtectionAllowlistCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method
