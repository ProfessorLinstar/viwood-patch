.class public Lcom/android/server/display/utils/Plog$SystemPlog;
.super Lcom/android/server/display/utils/Plog;
.source "Plog.java"


# instance fields
.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/server/display/utils/Plog;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/server/display/utils/Plog$SystemPlog;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/String;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/server/display/utils/Plog$SystemPlog;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
