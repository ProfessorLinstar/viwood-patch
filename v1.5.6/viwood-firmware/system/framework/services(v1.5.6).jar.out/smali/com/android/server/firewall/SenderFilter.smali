.class public abstract Lcom/android/server/firewall/SenderFilter;
.super Ljava/lang/Object;
.source "SenderFilter.java"


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;

.field public static final SIGNATURE:Lcom/android/server/firewall/Filter;

.field public static final SYSTEM:Lcom/android/server/firewall/Filter;

.field public static final SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

.field public static final USER_ID:Lcom/android/server/firewall/Filter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetSIGNATURE()Lcom/android/server/firewall/Filter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSYSTEM()Lcom/android/server/firewall/Filter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSYSTEM_OR_SIGNATURE()Lcom/android/server/firewall/Filter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetUSER_ID()Lcom/android/server/firewall/Filter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/android/server/firewall/SenderFilter$1;

    const-string/jumbo v1, "sender"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    .line 67
    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$2;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    .line 75
    new-instance v0, Lcom/android/server/firewall/SenderFilter$3;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$3;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    .line 83
    new-instance v0, Lcom/android/server/firewall/SenderFilter$4;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$4;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    .line 92
    new-instance v0, Lcom/android/server/firewall/SenderFilter$5;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$5;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-void
.end method

.method public static isPrivilegedApp(Landroid/content/pm/PackageManagerInternal;II)Z
    .locals 1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 39
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->isUidPrivileged(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
