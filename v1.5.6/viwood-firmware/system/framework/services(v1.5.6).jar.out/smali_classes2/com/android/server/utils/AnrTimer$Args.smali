.class public Lcom/android/server/utils/AnrTimer$Args;
.super Ljava/lang/Object;
.source "AnrTimer.java"


# instance fields
.field public mExtend:Z

.field public mFreeze:Z

.field public mInjector:Lcom/android/server/utils/AnrTimer$Injector;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmExtend(Lcom/android/server/utils/AnrTimer$Args;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/utils/AnrTimer$Args;)Lcom/android/server/utils/AnrTimer$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$Args;->mInjector:Lcom/android/server/utils/AnrTimer$Injector;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsDefaultInjector()Lcom/android/server/utils/AnrTimer$Injector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mInjector:Lcom/android/server/utils/AnrTimer$Injector;

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    .line 180
    iput-boolean v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mFreeze:Z

    return-void
.end method


# virtual methods
.method public extend(Z)Lcom/android/server/utils/AnrTimer$Args;
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    return-object p0
.end method

.method public freeze(Z)Lcom/android/server/utils/AnrTimer$Args;
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/android/server/utils/AnrTimer$Args;->mFreeze:Z

    return-object p0
.end method
