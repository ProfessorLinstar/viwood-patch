.class public Lcom/android/server/power/feature/PowerManagerFlags$FlagState;
.super Ljava/lang/Object;
.source "PowerManagerFlags.java"


# instance fields
.field public mEnabled:Z

.field public mEnabledSet:Z

.field public final mFlagFunction:Ljava/util/function/Supplier;

.field public final mName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mName:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mFlagFunction:Ljava/util/function/Supplier;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public final flagOrSystemProperty(Ljava/util/function/Supplier;Ljava/lang/String;)Z
    .locals 1

    .line 178
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 179
    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-nez p1, :cond_1

    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return p0

    .line 180
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "persist.sys."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-override"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isEnabled()Z
    .locals 2

    .line 163
    iget-boolean v0, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mEnabledSet:Z

    if-eqz v0, :cond_0

    .line 167
    iget-boolean p0, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mEnabled:Z

    return p0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mFlagFunction:Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->flagOrSystemProperty(Ljava/util/function/Supplier;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mEnabled:Z

    const/4 v1, 0x1

    .line 173
    iput-boolean v1, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mEnabledSet:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mName:Ljava/lang/String;

    const/16 v3, 0x27

    invoke-static {v2, v3, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v0, v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s%s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, " "

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (def:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->mFlagFunction:Ljava/util/function/Supplier;

    .line 194
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
