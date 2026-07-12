.class public Lcom/android/server/pm/BackgroundInstallControlService$1;
.super Ljava/lang/Object;
.source "BackgroundInstallControlService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/BackgroundInstallControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$1;->this$0:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2

    .line 130
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 131
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$1;->this$0:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-static {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->-$$Nest$fgetmHandler(Lcom/android/server/pm/BackgroundInstallControlService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    .line 137
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 138
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$1;->this$0:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-static {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->-$$Nest$fgetmHandler(Lcom/android/server/pm/BackgroundInstallControlService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
