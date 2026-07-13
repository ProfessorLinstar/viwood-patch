.class public abstract Lcom/android/server/pm/CrossProfileResolver;
.super Ljava/lang/Object;
.source "CrossProfileResolver.java"


# instance fields
.field public final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 45
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method


# virtual methods
.method public final filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;
    .locals 1

    if-nez p2, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 115
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget-object p2, p2, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 116
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 117
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public abstract filterResolveInfoWithDomainPreferredActivity(Landroid/content/Intent;Ljava/util/List;JIII)Ljava/util/List;
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2

    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 131
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    throw p0
.end method

.method public final isUserEnabled(I)Z
    .locals 2

    .line 92
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 94
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 97
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    throw p0
.end method

.method public abstract resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
.end method
