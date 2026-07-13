.class public Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;
.super Landroid/os/AsyncTask;
.source "AppOpsCheckingServiceImpl.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;->this$1:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;->this$1:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->writeState()V

    const/4 p0, 0x0

    return-object p0
.end method
