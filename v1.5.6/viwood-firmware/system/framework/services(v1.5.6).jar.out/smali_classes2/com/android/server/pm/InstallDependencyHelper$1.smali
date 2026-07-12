.class Lcom/android/server/pm/InstallDependencyHelper$1;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "InstallDependencyHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/InstallDependencyHelper;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iput-object p7, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->val$handler:Landroid/os/Handler;

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 216
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetUNBIND_TIMEOUT_MILLIS()J

    move-result-wide v0

    return-wide v0
.end method

.method public getJobHandler()Landroid/os/Handler;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->val$handler:Landroid/os/Handler;

    return-object p0
.end method

.method public getRequestTimeoutMs()J
    .locals 2

    .line 211
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetREQUEST_TIMEOUT_MILLIS()J

    move-result-wide v0

    return-wide v0
.end method
