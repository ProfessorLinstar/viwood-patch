.class public Lcom/android/server/am/ActivityManagerShellCommand$2;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1445
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    .line 1448
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
