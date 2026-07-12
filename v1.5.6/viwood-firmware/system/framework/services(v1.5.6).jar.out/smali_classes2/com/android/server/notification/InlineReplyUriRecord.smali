.class public final Lcom/android/server/notification/InlineReplyUriRecord;
.super Ljava/lang/Object;
.source "InlineReplyUriRecord.java"


# instance fields
.field public final mKey:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mUris:Landroid/util/ArraySet;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPermissionOwner:Landroid/os/IBinder;

    .line 45
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUris:Landroid/util/ArraySet;

    .line 46
    iput-object p2, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUser:Landroid/os/UserHandle;

    .line 47
    iput-object p3, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPackageName:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addUri(Landroid/net/Uri;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUris:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissionOwner()Landroid/os/IBinder;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPermissionOwner:Landroid/os/IBinder;

    return-object p0
.end method

.method public getUserId()I
    .locals 2

    .line 78
    iget-object p0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 79
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    if-ne p0, v1, :cond_0

    .line 80
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    return p0

    :cond_0
    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return p0
.end method
