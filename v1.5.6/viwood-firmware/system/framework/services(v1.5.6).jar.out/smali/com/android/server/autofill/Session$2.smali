.class public Lcom/android/server/autofill/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    .line 1785
    iput-object p1, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInlineUiHidden(Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 1793
    iget-object p0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0, p1}, Lcom/android/server/autofill/Session;->-$$Nest$mnotifyFillUiHidden(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public notifyInlineUiShown(Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 1788
    iget-object p0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0, p1}, Lcom/android/server/autofill/Session;->-$$Nest$mnotifyFillUiShown(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public onInputMethodStartInputView()V
    .locals 0

    .line 1800
    iget-object p0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0}, Lcom/android/server/autofill/Session;->-$$Nest$monInputMethodStart(Lcom/android/server/autofill/Session;)V

    return-void
.end method
