.class public Lcom/android/server/inputmethod/InputMethodManagerService$3;
.super Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;
.source "InputMethodManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

.field public final synthetic val$delegatePackageName:Ljava/lang/String;

.field public final synthetic val$delegatorPackageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 0

    .line 3302
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatePackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatorPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0

    .line 3315
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V

    return-void
.end method

.method public onResult(Ljava/lang/CharSequence;)V
    .locals 6

    .line 3305
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3306
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHwController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/HandwritingModeController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$userId:I

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatePackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatorPackageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/inputmethod/HandwritingModeController;->prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 3309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3310
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onResult(Ljava/lang/CharSequence;)V

    return-void

    :catchall_0
    move-exception p0

    .line 3309
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
