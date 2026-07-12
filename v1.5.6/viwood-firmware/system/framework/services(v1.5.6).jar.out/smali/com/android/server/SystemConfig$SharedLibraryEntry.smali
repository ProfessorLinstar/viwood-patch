.class public final Lcom/android/server/SystemConfig$SharedLibraryEntry;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# instance fields
.field public final canBeSafelyIgnored:Z

.field public final dependencies:[Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final isNative:Z

.field public final name:Ljava/lang/String;

.field public final onBootclasspathBefore:Ljava/lang/String;

.field public final onBootclasspathSince:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 193
    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->filename:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathSince:Ljava/lang/String;

    .line 203
    iput-object p5, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    .line 204
    iput-boolean p6, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->isNative:Z

    if-eqz p4, :cond_0

    .line 211
    invoke-static {p4}, Lcom/android/server/SystemConfig;->-$$Nest$smisAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p5, :cond_2

    .line 213
    invoke-static {p5}, Lcom/android/server/SystemConfig;->-$$Nest$smisAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->canBeSafelyIgnored:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    .line 186
    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
