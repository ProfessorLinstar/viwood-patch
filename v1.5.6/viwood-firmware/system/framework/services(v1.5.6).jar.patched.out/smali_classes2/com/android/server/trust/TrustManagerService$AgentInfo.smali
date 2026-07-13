.class public final Lcom/android/server/trust/TrustManagerService$AgentInfo;
.super Ljava/lang/Object;
.source "TrustManagerService.java"


# instance fields
.field public agent:Lcom/android/server/trust/TrustAgentWrapper;

.field public component:Landroid/content/ComponentName;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 579
    instance-of v0, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 582
    :cond_0
    check-cast p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 583
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget p1, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 594
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 593
    const-string v0, "AgentInfo{label=%s, component=%s, userId=%s}"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
