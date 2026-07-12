.class public Lcom/android/server/firewall/NotFilter;
.super Ljava/lang/Object;
.source "NotFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field public final mChild:Lcom/android/server/firewall/Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/android/server/firewall/NotFilter$1;

    const-string/jumbo v1, "not"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/NotFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/Filter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/firewall/NotFilter;->mChild:Lcom/android/server/firewall/Filter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/firewall/Filter;Lcom/android/server/firewall/NotFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/firewall/NotFilter;-><init>(Lcom/android/server/firewall/Filter;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/server/firewall/NotFilter;->mChild:Lcom/android/server/firewall/Filter;

    invoke-interface/range {p0 .. p7}, Lcom/android/server/firewall/Filter;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
