.class public Lcom/android/server/power/ShutdownThread$4;
.super Landroid/content/IIntentReceiver$Stub;
.source "ShutdownThread.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 599
    iget-object p1, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->-$$Nest$fgetmHandler(Lcom/android/server/power/ShutdownThread;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    new-instance p2, Lcom/android/server/power/ShutdownThread$4$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/power/ShutdownThread$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ShutdownThread;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
