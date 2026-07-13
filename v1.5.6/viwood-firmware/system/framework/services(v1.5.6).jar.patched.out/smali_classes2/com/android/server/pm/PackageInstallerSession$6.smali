.class public Lcom/android/server/pm/PackageInstallerSession$6;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    .line 3296
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/server/pm/PackageManagerException;)V
    .locals 0

    .line 3305
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleDependencyResolutionFailure(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 3296
    check-cast p1, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession$6;->onError(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 3296
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession$6;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 0

    .line 3300
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$minstall(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method
