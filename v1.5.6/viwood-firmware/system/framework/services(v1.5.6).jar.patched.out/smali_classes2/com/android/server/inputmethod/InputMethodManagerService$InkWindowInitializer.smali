.class public final Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1317
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1319
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1320
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->initInkWindow()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1324
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
