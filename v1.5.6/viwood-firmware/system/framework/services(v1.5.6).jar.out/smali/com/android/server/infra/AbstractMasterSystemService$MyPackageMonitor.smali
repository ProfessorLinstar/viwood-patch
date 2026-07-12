.class public Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AbstractMasterSystemService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method public static synthetic $r8$lambda$WJOav7o2UH2fVtcWZYNxlSqiN4Y(Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V
    .locals 0

    .line 1243
    invoke-virtual {p1, p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->handlePackageUpdateLocked(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Z)V
    .locals 0

    .line 993
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 994
    invoke-direct {p0, p2}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final getActiveServicePackageNameLocked()Ljava/lang/String;
    .locals 1

    .line 1229
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1230
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1234
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 1238
    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleActiveServiceRemoved(I)V
    .locals 2

    .line 1134
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1135
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 1136
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleActiveServiceRestartedLocked(Ljava/lang/String;I)V
    .locals 4

    .line 1147
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const-string v1, " is being restarted"

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v2, :cond_3

    .line 1149
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Holding service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v2, :cond_1

    .line 1154
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_1
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1160
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_3

    .line 1161
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_2

    .line 1162
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Eagerly recreating service for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_2
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 1167
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageRestartedLocked(I)V

    return-void
.end method

.method public final handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 1

    .line 1243
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 7

    .line 1085
    iget-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1086
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 1087
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p2, v3

    .line 1088
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez p4, :cond_0

    const/4 p0, 0x1

    .line 1090
    monitor-exit p3

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1092
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1093
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v5

    .line 1094
    const-string v6, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1095
    invoke-virtual {p0, v0, v5}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handleActiveServiceRestartedLocked(Ljava/lang/String;I)V

    goto :goto_1

    .line 1097
    :cond_1
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    goto :goto_1

    .line 1100
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handlePackageUpdateLocked(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1103
    :cond_3
    monitor-exit p3

    return v2

    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 2

    .line 1109
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageDataCleared(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    .line 1112
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v0, :cond_1

    .line 1113
    invoke-interface {v0}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1115
    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageDataClearedMultiModeLocked(Ljava/lang/String;I)V

    .line 1116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1120
    :cond_1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1121
    :try_start_1
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1123
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1125
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1126
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageDataClearedLocked(I)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 1130
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 5

    .line 1172
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v2, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageModified(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1175
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v1, :cond_1

    .line 1176
    monitor-exit v0

    return-void

    .line 1179
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    .line 1180
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v2, v1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1184
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v3}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1187
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3, v2, p1, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$mremoveInvalidCachedServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService;[Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    const/4 v3, 0x0

    .line 1193
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1194
    aget-object v4, v2, v3

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->peekAndUpdateCachedServiceLocked(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1198
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    .line 1059
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz p2, :cond_0

    .line 1060
    invoke-interface {p2}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    .line 1062
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1063
    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->handlePackageRemovedMultiModeLocked(Ljava/lang/String;I)V

    .line 1064
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1068
    :cond_0
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1069
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1070
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1072
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1074
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1075
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handleActiveServiceRemoved(I)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 1079
    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3

    .line 1038
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageUpdateFinished(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    .line 1040
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 1042
    :cond_1
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1043
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1044
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1045
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1046
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 1047
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fputmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1050
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatedLocked(I)V

    goto :goto_2

    .line 1052
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 1054
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 5

    .line 999
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageUpdateStarted(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1001
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 1004
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    .line 1006
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1007
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v3, Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicesCacheList(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fputmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)V

    .line 1009
    :cond_2
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1010
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatingLocked(I)V

    .line 1011
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    .line 1012
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_6

    .line 1013
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Holding service for user "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " while package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is being updated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    :cond_3
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v2, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v2, :cond_4

    .line 1018
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is being updated"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_4
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1024
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_6

    .line 1026
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_5

    .line 1027
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eagerly recreating service for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_5
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 1033
    :cond_6
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final peekAndUpdateCachedServiceLocked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    if-nez p3, :cond_0

    goto :goto_0

    .line 1209
    :cond_0
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 1211
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1217
    :cond_1
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1219
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1221
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p3, p1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p3, :cond_2

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo p3, "update cached"

    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_2
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    :cond_3
    :goto_0
    return-void
.end method
