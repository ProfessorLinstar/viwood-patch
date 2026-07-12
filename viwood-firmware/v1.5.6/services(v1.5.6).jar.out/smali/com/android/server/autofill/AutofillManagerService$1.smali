.class public Lcom/android/server/autofill/AutofillManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "AutofillManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public static synthetic $r8$lambda$OcFbEPQ-kllEIdqA8xbZA_P2xkU(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    .line 187
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveFinishedSessionsLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 179
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_0

    const-string p1, "AutofillManagerService"

    const-string p2, "Close system dialogs"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService;->access$000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 187
    :try_start_0
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 188
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmUi(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void

    :catchall_0
    move-exception p0

    .line 188
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
