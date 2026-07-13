.class public Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "AutofillManagerServiceShellCommand.java"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 457
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
