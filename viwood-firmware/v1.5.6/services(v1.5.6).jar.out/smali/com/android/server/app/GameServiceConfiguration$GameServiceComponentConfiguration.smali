.class public final Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;
.super Ljava/lang/Object;
.source "GameServiceConfiguration.java"


# instance fields
.field public final mGameServiceComponentName:Landroid/content/ComponentName;

.field public final mGameSessionServiceComponentName:Landroid/content/ComponentName;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    iput-object p1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    .line 98
    iput-object p2, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    .line 99
    iput-object p3, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 123
    :cond_0
    instance-of v1, p1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 127
    :cond_1
    check-cast p1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 129
    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    .line 131
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getGameServiceComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getGameSessionServiceComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameServiceComponentConfiguration{userHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gameServiceComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gameSessionServiceComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
