.class public final Lcom/android/server/print/PrintManagerService;
.super Lcom/android/server/SystemService;
.source "PrintManagerService.java"


# instance fields
.field public final mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;-><init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 102
    const-string/jumbo v0, "print"

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$mhandleUserStopped(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$mhandleUserUnlocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    return-void
.end method
