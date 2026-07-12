.class public final Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;
.super Landroid/view/translation/ITranslationServiceCallback$Stub;
.source "TranslationManagerServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/translation/TranslationManagerServiceImpl;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;->this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    invoke-direct {p0}, Landroid/view/translation/ITranslationServiceCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/translation/TranslationManagerServiceImpl;Lcom/android/server/translation/TranslationManagerServiceImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public updateTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .locals 0

    if-nez p1, :cond_0

    .line 626
    const-string p0, "TranslationManagerServiceImpl"

    const-string/jumbo p1, "received a null TranslationCapability from TranslationService."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 629
    :cond_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;->this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    invoke-static {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->-$$Nest$mnotifyClientsTranslationCapability(Lcom/android/server/translation/TranslationManagerServiceImpl;Landroid/view/translation/TranslationCapability;)V

    return-void
.end method
