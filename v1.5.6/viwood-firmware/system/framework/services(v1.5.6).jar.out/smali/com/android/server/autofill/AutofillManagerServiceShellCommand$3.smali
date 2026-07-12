.class public Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "AutofillManagerServiceShellCommand.java"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 473
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;->val$pw:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 3

    .line 476
    const-string/jumbo p1, "sessions"

    .line 477
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 478
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/String;

    .line 479
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
