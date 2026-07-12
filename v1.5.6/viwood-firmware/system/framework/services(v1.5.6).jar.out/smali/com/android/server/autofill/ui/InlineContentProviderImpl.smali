.class public final Lcom/android/server/autofill/ui/InlineContentProviderImpl;
.super Lcom/android/internal/view/inline/IInlineContentProvider$Stub;
.source "InlineContentProviderImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mProvideContentCalled:Z

.field public mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

.field public final mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;


# direct methods
.method public static synthetic $r8$lambda$6Z-fpAIW5FjBxVFGDrt0DINxKho(Lcom/android/server/autofill/ui/InlineContentProviderImpl;IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->lambda$provideContent$0(IILcom/android/internal/view/inline/IInlineContentCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$akUQz7EVewQ0DD7ma1KMQAv7q78(Lcom/android/server/autofill/ui/InlineContentProviderImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->handleGetSurfacePackage()V

    return-void
.end method

.method public static synthetic $r8$lambda$qYjUTN-E7RJXiJtOQjR_1hjr_KU(Lcom/android/server/autofill/ui/InlineContentProviderImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->handleOnSurfacePackageReleased()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;-><init>()V

    .line 59
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    .line 71
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 72
    iput-object p2, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/server/autofill/ui/InlineContentProviderImpl;
    .locals 2

    .line 83
    new-instance v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    iget-object v1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-direct {v0, v1, p0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    return-object v0
.end method

.method public final handleGetSurfacePackage()V
    .locals 2

    .line 124
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleGetSurfacePackage"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    if-nez p0, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->requestSurfacePackage()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final handleOnSurfacePackageReleased()V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleOnSurfacePackageReleased"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    if-nez p0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->surfacePackageReleased()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final handleProvideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 3

    .line 108
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleProvideContent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    .line 114
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->match(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    :cond_2
    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;IILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 119
    :cond_3
    iget-object p1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-virtual {p1, p3}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->setInlineContentCallback(Lcom/android/internal/view/inline/IInlineContentCallback;)V

    .line 120
    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->requestSurfacePackage()V

    return-void
.end method

.method public final synthetic lambda$provideContent$0(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->handleProvideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V

    return-void
.end method

.method public onSurfacePackageReleased()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;IILcom/android/internal/view/inline/IInlineContentCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestSurfacePackage()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
