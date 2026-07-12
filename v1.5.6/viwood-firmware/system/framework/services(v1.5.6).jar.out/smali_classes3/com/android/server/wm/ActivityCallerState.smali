.class public final Lcom/android/server/wm/ActivityCallerState;
.super Ljava/lang/Object;
.source "ActivityCallerState.java"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCallerTokenInfoMap:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    .line 74
    iput-object p1, p0, Lcom/android/server/wm/ActivityCallerState;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static addUriIfContentUri(Landroid/net/Uri;Landroid/util/ArraySet;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 244
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static convertToGrantUri(Landroid/net/Uri;II)Lcom/android/server/uri/GrantUri;
    .locals 1

    .line 177
    new-instance v0, Lcom/android/server/uri/GrantUri;

    .line 178
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 177
    invoke-static {p0, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p2

    .line 178
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p2, p0, p1}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    return-object v0
.end method

.method public static getContentUrisFromIntent(Landroid/content/Intent;)Landroid/util/ArraySet;
    .locals 4

    .line 183
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-nez p0, :cond_0

    goto :goto_3

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityCallerState;->addUriIfContentUri(Landroid/net/Uri;Landroid/util/ArraySet;)V

    .line 190
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    invoke-static {p0}, Lcom/android/server/wm/ActivityCallerState;->tryToUnparcelArrayListExtraStreamsUri(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 193
    invoke-static {p0}, Lcom/android/server/wm/ActivityCallerState;->tryToUnparcelExtraStreamUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityCallerState;->addUriIfContentUri(Landroid/net/Uri;Landroid/util/ArraySet;)V

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 196
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v3, v0}, Lcom/android/server/wm/ActivityCallerState;->addUriIfContentUri(Landroid/net/Uri;Landroid/util/ArraySet;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 201
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 204
    :goto_2
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 205
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/wm/ActivityCallerState;->addUriIfContentUri(Landroid/net/Uri;Landroid/util/ArraySet;)V

    .line 211
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/ActivityCallerState;->getContentUrisFromIntent(Landroid/content/Intent;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v0
.end method

.method public static tryToUnparcelArrayListExtraStreamsUri(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 2

    .line 231
    :try_start_0
    const-string v0, "android.intent.extra.STREAM"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unparcel an ArrayList of URIs in EXTRA_STREAM, returning null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static tryToUnparcelExtraStreamUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2

    .line 218
    :try_start_0
    const-string v0, "android.intent.extra.STREAM"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unparcel an URI in EXTRA_STREAM, returning null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(Landroid/os/IBinder;Lcom/android/server/wm/ActivityCallerState$CallerInfo;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addContentUriIfUidHasPermission(Landroid/net/Uri;IILandroid/util/ArraySet;)Z
    .locals 1

    .line 167
    invoke-static {p1, p3, p2}, Lcom/android/server/wm/ActivityCallerState;->convertToGrantUri(Landroid/net/Uri;II)Lcom/android/server/uri/GrantUri;

    move-result-object p1

    .line 168
    iget-object p0, p0, Lcom/android/server/wm/ActivityCallerState;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkUriPermission(Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p4, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkContentUriPermission(Landroid/os/IBinder;Lcom/android/server/uri/GrantUri;I)Z
    .locals 1

    .line 128
    invoke-static {p3}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    iget-object p0, p0, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Caller not found for checkContentUriPermission of: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 136
    invoke-virtual {p2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mInaccessibleContentUris:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mReadableContentUris:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    iget-object p0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mWritableContentUris:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The supplied URI wasn\'t passed at launch in #getData, #EXTRA_STREAM, nor #getClipData: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 149
    invoke-virtual {p2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    return p1

    :cond_4
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_5

    if-nez p0, :cond_5

    return p1

    :cond_5
    const/4 p0, 0x1

    return p0

    .line 129
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mode flags are not access URI mode flags: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V
    .locals 4

    .line 106
    new-instance v0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    invoke-direct {v0, p3, p4, p5}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;-><init>(ILjava/lang/String;Z)V

    .line 108
    iget-object p4, p0, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {p4, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p2}, Lcom/android/server/wm/ActivityCallerState;->getContentUrisFromIntent(Landroid/content/Intent;)Landroid/util/ArraySet;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 p4, 0x1

    sub-int/2addr p2, p4

    :goto_0
    if-ltz p2, :cond_1

    .line 112
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/net/Uri;

    .line 114
    iget-object v1, v0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mReadableContentUris:Landroid/util/ArraySet;

    invoke-virtual {p0, p5, p3, p4, v1}, Lcom/android/server/wm/ActivityCallerState;->addContentUriIfUidHasPermission(Landroid/net/Uri;IILandroid/util/ArraySet;)Z

    move-result v1

    const/4 v2, 0x2

    .line 117
    iget-object v3, v0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mWritableContentUris:Landroid/util/ArraySet;

    invoke-virtual {p0, p5, p3, v2, v3}, Lcom/android/server/wm/ActivityCallerState;->addContentUriIfUidHasPermission(Landroid/net/Uri;IILandroid/util/ArraySet;)Z

    move-result v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 121
    iget-object v1, v0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mInaccessibleContentUris:Landroid/util/ArraySet;

    const/4 v2, 0x0

    invoke-static {p5, v2, p3}, Lcom/android/server/wm/ActivityCallerState;->convertToGrantUri(Landroid/net/Uri;II)Lcom/android/server/uri/GrantUri;

    move-result-object p5

    invoke-virtual {v1, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCallerInfoOrNull(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityCallerState$CallerInfo;
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    return-object p0
.end method

.method public getPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->getCallerInfoOrNull(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mPackageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUid(Landroid/os/IBinder;)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->getCallerInfoOrNull(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 87
    iget p0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mUid:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public hasCaller(Landroid/os/IBinder;)Z
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->getCallerInfoOrNull(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShareIdentityEnabled(Landroid/os/IBinder;)Z
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->getCallerInfoOrNull(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 97
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mIsShareIdentityEnabled:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
