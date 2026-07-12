.class public Lcom/android/server/stats/pull/psi/PsiExtractor;
.super Ljava/lang/Object;
.source "PsiExtractor.java"


# instance fields
.field public final mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    invoke-direct {v0}, Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/psi/PsiExtractor;->mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    return-void
.end method

.method public static parsePsiData(Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData;
    .locals 8

    .line 122
    const-string/jumbo v0, "some"

    invoke-static {p0, v0, p1}, Lcom/android/server/stats/pull/psi/PsiExtractor;->parsePsiString(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    move-result-object v0

    .line 123
    const-string v1, "full"

    invoke-static {p0, v1, p1}, Lcom/android/server/stats/pull/psi/PsiExtractor;->parsePsiString(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    move-result-object p0

    .line 125
    const-string v1, "PsiExtractor"

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 126
    const-string p0, "Returning empty PSI: some or full line are failed to parse"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replacing some info with empty PSI record for the resource type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v2, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    const/high16 v5, -0x40800000    # -1.0f

    const-wide/16 v6, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct/range {v2 .. v7}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;-><init>(FFFJ)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replacing full info with empty PSI record for the resource type "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v2, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    const/high16 v5, -0x40800000    # -1.0f

    const-wide/16 v6, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct/range {v2 .. v7}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;-><init>(FFFJ)V

    move-object p0, v2

    .line 139
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/server/stats/pull/psi/PsiData;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/server/stats/pull/psi/PsiData;-><init>(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)V

    return-object v1
.end method

.method public static parsePsiString(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;
    .locals 8

    .line 87
    const-string v0, "full"

    if-ne p1, v0, :cond_0

    sget-object v1, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p2, v1, :cond_0

    .line 88
    const-string/jumbo p2, "some"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 89
    new-instance v0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;-><init>(FFFJ)V

    return-object v0

    .line 93
    :cond_0
    const-string p2, ".*{0} avg10=(\\d+.\\d+) avg60=(\\d+.\\d+) avg300=(\\d+.\\d+) total=(\\d+).*"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 94
    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 95
    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "PsiExtractor"

    if-nez p2, :cond_1

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Returning null: the line \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not in expected pattern."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 106
    :cond_1
    :try_start_0
    new-instance v2, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    const/4 p2, 0x1

    .line 107
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 p2, 0x2

    .line 108
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 p2, 0x3

    .line 109
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 p2, 0x4

    .line 110
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;-><init>(FFFJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 112
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Returning null: some value in line \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" cannot be parsed as numeric."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public getPsiData(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->MEMORY:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, v0, :cond_0

    .line 68
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiExtractor;->mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    const-string v0, "/proc/pressure/memory"

    invoke-virtual {p0, v0}, Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->IO:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, v0, :cond_1

    .line 70
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiExtractor;->mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    const-string v0, "/proc/pressure/io"

    invoke-virtual {p0, v0}, Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, v0, :cond_2

    .line 72
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiExtractor;->mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    const-string v0, "/proc/pressure/cpu"

    invoke-virtual {p0, v0}, Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 77
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/stats/pull/psi/PsiExtractor;->parsePsiData(Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData;

    move-result-object p0

    return-object p0

    .line 74
    :cond_2
    const-string p0, "PsiExtractor"

    const-string p1, "PsiExtractor failure: cannot read kernel source file, returning null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
