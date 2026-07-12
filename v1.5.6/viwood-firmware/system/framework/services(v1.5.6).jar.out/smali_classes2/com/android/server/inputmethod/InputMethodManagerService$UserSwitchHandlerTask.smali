.class public final Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mToUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 0

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 975
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    .line 976
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 981
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 984
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 986
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v2

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-static {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchUserOnHandlerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 988
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fputmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)V

    .line 989
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
