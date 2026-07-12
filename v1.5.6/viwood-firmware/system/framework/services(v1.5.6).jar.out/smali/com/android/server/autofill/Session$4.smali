.class public Lcom/android/server/autofill/Session$4;
.super Landroid/os/ResultReceiver;
.source "Session.java"


# instance fields
.field public final mAutofillId:Landroid/view/autofill/AutofillId;

.field public final synthetic this$0:Lcom/android/server/autofill/Session;

.field public final synthetic val$requestId:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/os/Handler;I)V
    .locals 0

    .line 6063
    iput-object p1, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    iput p3, p0, Lcom/android/server/autofill/Session$4;->val$requestId:I

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6064
    invoke-static {p1}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmCurrentViewId(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    .line 6068
    const-string v1, "AutofillSession"

    if-nez p1, :cond_0

    .line 6069
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceiveResult from Credential Manager bottom sheet with mCurrentViewId: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6074
    const-string p1, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    const-class v1, Landroid/credentials/GetCredentialResponse;

    .line 6075
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/GetCredentialResponse;

    .line 6080
    iget-object p2, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    iget-object p0, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;Landroid/view/autofill/AutofillId;)V

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 6095
    const-string p1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 6096
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6099
    array-length p2, p1

    const/4 v2, 0x2

    if-lt p2, v2, :cond_1

    const/4 p2, 0x0

    .line 6100
    aget-object p2, p1, p2

    const/4 v2, 0x1

    .line 6101
    aget-object p1, p1, v2

    .line 6102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Credman bottom sheet from pinned entry failed with: + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6109
    iget-object v1, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    new-instance v2, Landroid/credentials/GetCredentialException;

    invoke-direct {v2, p2, p1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;Landroid/view/autofill/AutofillId;)V

    :cond_1
    return-void

    .line 6115
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown resultCode from credential manager bottom sheet: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
