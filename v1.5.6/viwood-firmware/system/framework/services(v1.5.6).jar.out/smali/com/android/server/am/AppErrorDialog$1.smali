.class public Lcom/android/server/am/AppErrorDialog$1;
.super Landroid/os/Handler;
.source "AppErrorDialog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/android/server/am/AppErrorDialog;->-$$Nest$msetResult(Lcom/android/server/am/AppErrorDialog;I)V

    .line 141
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    return-void
.end method
