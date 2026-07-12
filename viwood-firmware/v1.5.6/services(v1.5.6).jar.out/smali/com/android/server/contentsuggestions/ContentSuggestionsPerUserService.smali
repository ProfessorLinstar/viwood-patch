.class public final Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "ContentSuggestionsPerUserService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentSuggestionsPerUserService"


# instance fields
.field public mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateRemoteServiceLocked(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->updateRemoteServiceLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    return-void
.end method

.method private updateRemoteServiceLocked()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    :cond_0
    return-void
.end method


# virtual methods
.method public classifyContentSelectionsLocked(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    :cond_0
    return-void
.end method

.method public final ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    if-nez v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 146
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_0

    .line 147
    sget-object p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "ensureRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 153
    new-instance v0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    new-instance v4, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;

    invoke-direct {v4, p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V

    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v5, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 162
    invoke-virtual {v5}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v6, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    iget-boolean v6, v6, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/contentsuggestions/RemoteContentSuggestionsService$Callbacks;ZZ)V

    iput-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 165
    :cond_2
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    return-object p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 64
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v1, 0x80

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object p1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v0, "android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 71
    :cond_0
    sget-object p1, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentSuggestionsService from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' does not require permission "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Service does not require permission android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyInteractionLocked(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public provideContextImageFromBitmapLocked(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->provideContextImageLocked(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V

    return-void
.end method

.method public provideContextImageLocked(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->provideContextImage(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public suggestContentSelectionsLocked(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    :cond_0
    return-void
.end method

.method public updateLocked(Z)Z
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    .line 84
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->updateRemoteServiceLocked()V

    return p1
.end method
