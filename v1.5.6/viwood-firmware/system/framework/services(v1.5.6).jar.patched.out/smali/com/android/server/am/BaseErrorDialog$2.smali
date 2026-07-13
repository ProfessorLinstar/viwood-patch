.class public Lcom/android/server/am/BaseErrorDialog$2;
.super Landroid/os/Handler;
.source "BaseErrorDialog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BaseErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseErrorDialog;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 113
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {p1, v1}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$fputmConsuming(Lcom/android/server/am/BaseErrorDialog;Z)V

    .line 115
    iget-object p0, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {p0, v0}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    .line 117
    iget-object p0, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V

    :cond_1
    return-void
.end method
