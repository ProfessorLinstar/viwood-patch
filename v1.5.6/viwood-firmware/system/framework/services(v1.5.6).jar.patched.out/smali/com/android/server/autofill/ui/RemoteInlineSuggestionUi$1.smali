.class public Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;
.super Landroid/service/autofill/ISurfacePackageResultCallback$Stub;
.source "RemoteInlineSuggestionUi.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;


# direct methods
.method public static synthetic $r8$lambda$M_qFROwAETQuiidXOETzwtei_Ic(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->lambda$onResult$0(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-direct {p0}, Landroid/service/autofill/ISurfacePackageResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onResult$0(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 3

    .line 158
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending refreshed SurfacePackage to IME"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->-$$Nest$fgetmInlineContentCallback(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Lcom/android/internal/view/inline/IInlineContentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->-$$Nest$fgetmActualWidth(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->-$$Nest$fgetmActualHeight(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/view/inline/IInlineContentCallback;->onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    .line 162
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->-$$Nest$mhandleUpdateRefCount(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 164
    :catch_0
    invoke-static {}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteException calling onContent"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->-$$Nest$fgetmHandler(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
