.class public Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;
.super Ljava/lang/Object;
.source "InlineSuggestionFactory.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public autofill(Landroid/service/autofill/Dataset;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onError()V
    .locals 1

    .line 207
    const-string p0, "InlineSuggestionFactory"

    const-string v0, "An error happened on the tooltip"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInflate()V
    .locals 0

    .line 0
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 0

    .line 0
    return-void
.end method
