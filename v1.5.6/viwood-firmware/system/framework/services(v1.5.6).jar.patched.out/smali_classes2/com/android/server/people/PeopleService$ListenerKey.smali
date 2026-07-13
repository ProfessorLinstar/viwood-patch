.class public Lcom/android/server/people/PeopleService$ListenerKey;
.super Ljava/lang/Object;
.source "PeopleService.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mShortcutId:Ljava/lang/String;

.field public final mUserId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    .line 384
    iput-object p2, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    .line 385
    iput-object p3, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 402
    check-cast p1, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 403
    invoke-virtual {p1}, Lcom/android/server/people/PeopleService$ListenerKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p1}, Lcom/android/server/people/PeopleService$ListenerKey;->getUserId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p1}, Lcom/android/server/people/PeopleService$ListenerKey;->getShortcutId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
