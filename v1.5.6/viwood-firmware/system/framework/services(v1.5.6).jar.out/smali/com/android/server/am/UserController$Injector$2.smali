.class public Lcom/android/server/am/UserController$Injector$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "UserController.java"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController$Injector;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 4135
    iput-object p2, p0, Lcom/android/server/am/UserController$Injector$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 0

    .line 4137
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
