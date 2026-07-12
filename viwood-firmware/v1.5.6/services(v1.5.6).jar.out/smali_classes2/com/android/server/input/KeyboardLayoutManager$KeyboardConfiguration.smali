.class public Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;
.super Ljava/lang/Object;
.source "KeyboardLayoutManager.java"


# instance fields
.field public mConfiguredLayouts:Ljava/util/Set;

.field public final mDeviceId:I


# direct methods
.method public static bridge synthetic -$$Nest$mgetConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->getConfiguredLayouts()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDeviceId(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->getDeviceId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->hasConfiguredLayouts()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->setConfiguredLayouts(Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    iput p1, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mDeviceId:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/android/server/input/KeyboardLayoutManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getConfiguredLayouts()Ljava/util/Set;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    return-object p0
.end method

.method public final getDeviceId()I
    .locals 0

    .line 1224
    iget p0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mDeviceId:I

    return p0
.end method

.method public final hasConfiguredLayouts()Z
    .locals 0

    .line 1228
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setConfiguredLayouts(Ljava/util/Set;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    return-void
.end method
