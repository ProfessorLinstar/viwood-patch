.class public Lcom/android/server/security/intrusiondetection/SecurityLogSource;
.super Ljava/lang/Object;
.source "SecurityLogSource.java"

# interfaces
.implements Lcom/android/server/security/intrusiondetection/DataSource;


# instance fields
.field public mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mEventCallback:Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDataAggregator(Lcom/android/server/security/intrusiondetection/SecurityLogSource;)Lcom/android/server/security/intrusiondetection/DataAggregator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/intrusiondetection/DataAggregator;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    .line 45
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 46
    const-class p1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 47
    new-instance p1, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;-><init>(Lcom/android/server/security/intrusiondetection/SecurityLogSource;Lcom/android/server/security/intrusiondetection/SecurityLogSource-IA;)V

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mEventCallback:Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->setInternalEventsCallback(Ljava/util/function/Consumer;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->disableAuditLog()V

    return-void
.end method

.method public final disableAuditLog()V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->isAuditLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->setAuditLogEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->enableAuditLog()V

    .line 54
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mEventCallback:Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->setInternalEventsCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final enableAuditLog()V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->isAuditLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->setAuditLogEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final isAuditLogEnabled()Z
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isAuditLogEnabled()Z

    move-result p0

    return p0
.end method
