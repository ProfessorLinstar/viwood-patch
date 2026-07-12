.class public Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;
.super Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;
.source "RunAppFunctionServiceCallback.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

.field public final synthetic val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    iput-object p2, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;

    invoke-direct {p0}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/appfunctions/AppFunctionException;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    invoke-static {v0}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->-$$Nest$fgetmSafeExecuteAppFunctionCallback(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 77
    iget-object p0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;

    invoke-interface {p0}, Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;->onCompleted()V

    return-void
.end method

.method public onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    invoke-static {v0}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->-$$Nest$fgetmSafeExecuteAppFunctionCallback(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    .line 71
    iget-object p0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;

    invoke-interface {p0}, Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;->onCompleted()V

    return-void
.end method
