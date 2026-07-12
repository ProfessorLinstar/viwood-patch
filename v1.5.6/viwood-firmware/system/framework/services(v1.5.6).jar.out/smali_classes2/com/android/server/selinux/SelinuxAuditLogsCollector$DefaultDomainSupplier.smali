.class public Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;
.super Ljava/lang/Object;
.source "SelinuxAuditLogsCollector.java"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .line 81
    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->enabledForAllDomains()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 82
    const-string p0, "\\w+"

    return-object p0

    .line 84
    :cond_0
    const-string/jumbo p0, "selinux_audit_domain"

    const-string/jumbo v0, "no_match^"

    const-string v1, "adservices"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
