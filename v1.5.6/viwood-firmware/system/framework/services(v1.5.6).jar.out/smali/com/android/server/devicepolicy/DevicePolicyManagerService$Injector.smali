.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1744
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public binderClearCallingIdentity()J
    .locals 2

    .line 1942
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderGetCallingPid()I
    .locals 0

    .line 1954
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    return p0
.end method

.method public binderGetCallingUid()I
    .locals 0

    .line 1950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public binderGetCallingUserHandle()Landroid/os/UserHandle;
    .locals 0

    .line 1958
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public binderIsCallingUidMyUid()Z
    .locals 1

    .line 1962
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public binderRestoreCallingIdentity(J)V
    .locals 0

    .line 1946
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .locals 0

    .line 1970
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 0

    .line 1966
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2

    .line 1752
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1753
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 1875
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 0

    .line 1777
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    .line 1841
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method public getAlarmManagerInternal()Lcom/android/server/AlarmManagerInternal;
    .locals 0

    .line 1845
    const-class p0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/AlarmManagerInternal;

    return-object p0
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .line 1896
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1849
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getCrossProfileApps(I)Landroid/content/pm/CrossProfileApps;
    .locals 1

    .line 1904
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/content/pm/CrossProfileApps;

    .line 1905
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/CrossProfileApps;

    return-object p0
.end method

.method public getDeviceManagementResourcesProvider()Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;
    .locals 0

    .line 2134
    new-instance p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;-><init>()V

    return-object p0
.end method

.method public getIActivityManager()Landroid/app/IActivityManager;
    .locals 0

    .line 1867
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getIActivityTaskManager()Landroid/app/IActivityTaskManager;
    .locals 0

    .line 1871
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    return-object p0
.end method

.method public getIBackupManager()Landroid/app/backup/IBackupManager;
    .locals 0

    .line 1887
    const-string p0, "backup"

    .line 1888
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1887
    invoke-static {p0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p0

    return-object p0
.end method

.method public getIIpConnectivityMetrics()Landroid/net/IIpConnectivityMetrics;
    .locals 0

    .line 1808
    const-string p0, "connmetrics"

    .line 1809
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1808
    invoke-static {p0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    .line 1879
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getIPermissionManager()Landroid/permission/IPermissionManager;
    .locals 0

    .line 1883
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object p0

    return-object p0
.end method

.method public getIWindowManager()Landroid/view/IWindowManager;
    .locals 0

    .line 1862
    const-string/jumbo p0, "window"

    .line 1863
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 1

    .line 1858
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    return-object p0
.end method

.method public getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;
    .locals 0

    .line 1900
    const-class p0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/LockSettingsInternal;

    return-object p0
.end method

.method public getMyLooper()Landroid/os/Looper;
    .locals 0

    .line 1929
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkPolicyManagerInternal()Lcom/android/server/net/NetworkPolicyManagerInternal;
    .locals 0

    .line 1800
    const-class p0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .line 1804
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 1813
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManager(I)Landroid/content/pm/PackageManager;
    .locals 0

    .line 1818
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1820
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 1769
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;
    .locals 0

    .line 1773
    const-class p0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerLocal;

    return-object p0
.end method

.method public getPermissionControllerManager(Landroid/os/UserHandle;)Landroid/permission/PermissionControllerManager;
    .locals 2

    .line 1782
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class p1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionControllerManager;

    return-object p0

    .line 1786
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/permission/PermissionControllerManager;

    .line 1787
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionControllerManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1790
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPersistentDataBlockManagerInternal()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .locals 0

    .line 1892
    const-class p0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    return-object p0
.end method

.method public getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .locals 0

    .line 1825
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 1757
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getRoleManager()Landroid/app/role/RoleManager;
    .locals 1

    .line 1833
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1829
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public getTrustManager()Landroid/app/trust/TrustManager;
    .locals 1

    .line 1837
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "trust"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method public getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;
    .locals 0

    .line 1796
    const-class p0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 0

    .line 1761
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 1765
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public getVpnManager()Landroid/net/VpnManager;
    .locals 1

    .line 1854
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/VpnManager;

    return-object p0
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .line 1933
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public hasFeature()Z
    .locals 1

    .line 1748
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.device_admin"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasUserSetupCompleted(Lcom/android/server/devicepolicy/DevicePolicyData;)Z
    .locals 0

    .line 1909
    iget-boolean p0, p1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    return p0
.end method

.method public isAdminInstalledCaCertAutoApproved()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isBuildDebuggable()Z
    .locals 0

    .line 1913
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return p0
.end method

.method public isChangeEnabled(JLjava/lang/String;I)Z
    .locals 0

    .line 2126
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public keyChainBind()Landroid/security/KeyChain$KeyChainConnection;
    .locals 0

    .line 2102
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0

    return-object p0
.end method

.method public keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 0

    .line 2106
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0

    return-object p0
.end method

.method public newEnterpriseSpecificIdCalculator()Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;
    .locals 1

    .line 1921
    new-instance v0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .line 1917
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newTransferOwnershipMetadataManager()Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
    .locals 0

    .line 2114
    new-instance p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;-><init>()V

    return-object p0
.end method

.method public pendingIntentGetActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 0

    .line 2026
    invoke-static/range {p1 .. p6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public pendingIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    .line 2033
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public postOnSystemServerInitThreadPool(Ljava/lang/Runnable;)V
    .locals 0

    .line 2110
    const-string p0, "DevicePolicyManager"

    invoke-static {p1, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public powerManagerGoToSleep(JII)V
    .locals 1

    .line 1978
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public powerManagerReboot(Ljava/lang/String;)V
    .locals 1

    .line 1982
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public recoverySystemRebootWipeUserData(ZLjava/lang/String;ZZZZ)Z
    .locals 1

    .line 1988
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/devicepolicy/FactoryResetter;->newBuilder(Landroid/content/Context;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setSafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    .line 1989
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setReason(Ljava/lang/String;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setShutdown(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setForce(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setWipeEuicc(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    .line 1990
    invoke-virtual {p0, p5}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setWipeAdoptableStorage(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    .line 1991
    invoke-virtual {p0, p6}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setWipeFactoryResetProtection(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    .line 1992
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->build()Lcom/android/server/devicepolicy/FactoryResetter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryReset()Z

    move-result p0

    return p0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 0

    .line 2038
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public roleManagerGetRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 0

    .line 2020
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public runCryptoSelfTest()V
    .locals 0

    .line 2118
    invoke-static {}, Lcom/android/server/devicepolicy/CryptoTestHelper;->runAndLogSelfTest()V

    return-void
.end method

.method public securityLogGetLoggingEnabledProperty()Z
    .locals 0

    .line 2094
    invoke-static {}, Landroid/app/admin/SecurityLog;->getLoggingEnabledProperty()Z

    move-result p0

    return p0
.end method

.method public securityLogIsLoggingEnabled()Z
    .locals 0

    .line 2098
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result p0

    return p0
.end method

.method public securityLogSetLoggingEnabledProperty(Z)V
    .locals 0

    .line 2090
    invoke-static {p1}, Landroid/app/admin/SecurityLog;->setLoggingEnabledProperty(Z)V

    return-void
.end method

.method public setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V
    .locals 0

    .line 2130
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    return-void
.end method

.method public settingsGlobalGetInt(Ljava/lang/String;I)I
    .locals 0

    .line 2068
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public settingsGlobalGetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2073
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public settingsGlobalPutInt(Ljava/lang/String;I)V
    .locals 0

    .line 2077
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public settingsGlobalPutString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2081
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public settingsGlobalPutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2063
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public settingsSecureGetIntForUser(Ljava/lang/String;II)I
    .locals 0

    .line 2043
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 2048
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public settingsSecurePutIntForUser(Ljava/lang/String;II)V
    .locals 0

    .line 2053
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2058
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public settingsSystemPutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2085
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2086
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2085
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public storageManagerIsFileBasedEncryptionEnabled()Z
    .locals 0

    .line 1925
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result p0

    return p0
.end method

.method public systemCurrentTimeMillis()J
    .locals 2

    .line 2122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2008
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public systemPropertiesGetBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 1996
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public systemPropertiesGetLong(Ljava/lang/String;J)J
    .locals 0

    .line 2000
    invoke-static {p1, p2, p3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2012
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final userHandleGetCallingUserId()I
    .locals 0

    .line 1974
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderGetCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public userManagerIsHeadlessSystemUserMode()Z
    .locals 0

    .line 2016
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result p0

    return p0
.end method
