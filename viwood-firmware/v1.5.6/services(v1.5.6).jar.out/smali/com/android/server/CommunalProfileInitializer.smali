.class public Lcom/android/server/CommunalProfileInitializer;
.super Ljava/lang/Object;
.source "CommunalProfileInitializer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CommunalProfileInitializer"


# instance fields
.field public final mAms:Lcom/android/server/am/ActivityManagerService;

.field public mUmi:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/CommunalProfileInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 39
    iput-object p1, p0, Lcom/android/server/CommunalProfileInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static removeCommunalProfileIfPresent()V
    .locals 5

    .line 74
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 75
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getCommunalProfileId()I

    move-result v1

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    sget-object v2, Lcom/android/server/CommunalProfileInitializer;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Removing existing Communal Profile, userId=%d"

    invoke-static {v2, v4, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->removeUserEvenWhenDisallowed(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to remove Communal Profile, userId=%d"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final createCommunalProfileIfNeeded()V
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/android/server/CommunalProfileInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getCommunalProfileId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 56
    sget-object p0, Lcom/android/server/CommunalProfileInitializer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Found existing Communal Profile, userId=%d"

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/android/server/CommunalProfileInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Creating a new Communal Profile"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/server/CommunalProfileInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    const-string v4, "android.os.usertype.profile.COMMUNAL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserManagerInternal;->createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 67
    const-string v1, "Successfully created Communal Profile, userId=%d"

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 69
    sget-object v0, Lcom/android/server/CommunalProfileInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Communal Profile creation failed"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public init(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/android/server/CommunalProfileInitializer;->TAG:Ljava/lang/String;

    const-string v1, "init())"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "createCommunalProfileIfNeeded"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/server/CommunalProfileInitializer;->createCommunalProfileIfNeeded()V

    .line 50
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method
