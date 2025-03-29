.class public Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;
.super Lcom/watabou/utils/PlatformSupport;
.source "AndroidPlatformSupport.java"


# static fields
.field public static JPFontGenerator:La/b/a/o/m/i/a;

.field public static JPFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "La/b/a/o/m/b;",
            ">;"
        }
    .end annotation
.end field

.field public static JPMatcher:Ljava/util/regex/Pattern;

.field public static KRFontGenerator:La/b/a/o/m/i/a;

.field public static KRFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "La/b/a/o/m/b;",
            ">;"
        }
    .end annotation
.end field

.field public static KRMatcher:Ljava/util/regex/Pattern;

.field public static SCFontGenerator:La/b/a/o/m/i/a;

.field public static SCFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "La/b/a/o/m/b;",
            ">;"
        }
    .end annotation
.end field

.field public static SCMatcher:Ljava/util/regex/Pattern;

.field public static basicFontGenerator:La/b/a/o/m/i/a;

.field public static basicFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "La/b/a/o/m/b;",
            ">;"
        }
    .end annotation
.end field

.field public static fonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "La/b/a/o/m/i/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "La/b/a/o/m/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public static koreanAndroid6OTF:Z


# instance fields
.field public android6KRSplitter:Ljava/util/regex/Pattern;

.field public packer:La/b/a/o/m/e;

.field public pageSize:I

.field public regularsplitter:Ljava/util/regex/Pattern;

.field public regularsplitterMultiline:Ljava/util/regex/Pattern;

.field public systemfont:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->basicFonts:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFonts:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCFonts:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPFonts:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->koreanAndroid6OTF:Z

    const-string v0, "\\p{InHangul_Syllables}"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRMatcher:Ljava/util/regex/Pattern;

    const-string v0, "\\p{InCJK_Unified_Ideographs}|\\p{InCJK_Symbols_and_Punctuation}|\\p{InHalfwidth_and_Fullwidth_Forms}"

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCMatcher:Ljava/util/regex/Pattern;

    const-string v0, "\\p{InHiragana}|\\p{InKatakana}"

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPMatcher:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/utils/PlatformSupport;-><init>()V

    const-string v0, "(?<=\n)|(?=\n)|(?<=_)|(?=_)|(?<=\\p{InHiragana})|(?=\\p{InHiragana})|(?<=\\p{InKatakana})|(?=\\p{InKatakana})|(?<=\\p{InCJK_Unified_Ideographs})|(?=\\p{InCJK_Unified_Ideographs})|(?<=\\p{InCJK_Symbols_and_Punctuation})|(?=\\p{InCJK_Symbols_and_Punctuation})|(?<=\\p{InHalfwidth_and_Fullwidth_Forms})|(?=\\p{InHalfwidth_and_Fullwidth_Forms})"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->regularsplitter:Ljava/util/regex/Pattern;

    const-string v0, "(?<= )|(?= )|(?<=\n)|(?=\n)|(?<=_)|(?=_)|(?<=\\p{InHiragana})|(?=\\p{InHiragana})|(?<=\\p{InKatakana})|(?=\\p{InKatakana})|(?<=\\p{InCJK_Unified_Ideographs})|(?=\\p{InCJK_Unified_Ideographs})|(?<=\\p{InCJK_Symbols_and_Punctuation})|(?=\\p{InCJK_Symbols_and_Punctuation})|(?<=\\p{InHalfwidth_and_Fullwidth_Forms})|(?=\\p{InHalfwidth_and_Fullwidth_Forms})"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->regularsplitterMultiline:Ljava/util/regex/Pattern;

    const-string v0, "(?<= )|(?= )|(?<=\n)|(?=\n)|(?<=_)|(?=_)|(?!\\p{InHangul_Syllables})|(?<!\\p{InHangul_Syllables})"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->android6KRSplitter:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static getGeneratorForString(Ljava/lang/String;)La/b/a/o/m/i/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRMatcher:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFontGenerator:La/b/a/o/m/i/a;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCMatcher:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCFontGenerator:La/b/a/o/m/i/a;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPMatcher:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPFontGenerator:La/b/a/o/m/i/a;

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->basicFontGenerator:La/b/a/o/m/i/a;

    return-object p0
.end method


# virtual methods
.method public getFont(ILjava/lang/String;)La/b/a/o/m/b;
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->getGeneratorForString(Ljava/lang/String;)La/b/a/o/m/i/a;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    new-instance v1, La/b/a/o/m/i/a$b;

    invoke-direct {v1}, La/b/a/o/m/i/a$b;-><init>()V

    .line 4
    iput p1, v1, La/b/a/o/m/i/a$b;->a:I

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v1, La/b/a/o/m/i/a$b;->w:Z

    int-to-float v3, p1

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 6
    iput v3, v1, La/b/a/o/m/i/a$b;->g:F

    const/4 v4, 0x3

    .line 7
    iput v4, v1, La/b/a/o/m/i/a$b;->f:I

    .line 8
    sget-object v4, La/b/a/o/m/i/a$c;->a:La/b/a/o/m/i/a$c;

    iput-object v4, v1, La/b/a/o/m/i/a$b;->c:La/b/a/o/m/i/a$c;

    float-to-int v3, v3

    neg-int v3, v3

    .line 9
    iput v3, v1, La/b/a/o/m/i/a$b;->n:I

    .line 10
    iput-boolean v2, v1, La/b/a/o/m/i/a$b;->A:Z

    .line 11
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->basicFontGenerator:La/b/a/o/m/i/a;

    if-ne p2, v2, :cond_1

    const-string v2, "\ufffdetaoinshrdl"

    .line 12
    iput-object v2, v1, La/b/a/o/m/i/a$b;->t:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "\ufffd"

    .line 13
    iput-object v2, v1, La/b/a/o/m/i/a$b;->t:Ljava/lang/String;

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->packer:La/b/a/o/m/e;

    iput-object v2, v1, La/b/a/o/m/i/a$b;->v:La/b/a/o/m/e;

    .line 15
    :try_start_0
    invoke-virtual {p2, v1}, La/b/a/o/m/i/a;->a(La/b/a/o/m/i/a$b;)La/b/a/o/m/b;

    move-result-object v1

    .line 16
    iget-object v2, v1, La/b/a/o/m/b;->a:La/b/a/o/m/b$a;

    iget-object v3, v1, La/b/a/o/m/b;->a:La/b/a/o/m/b$a;

    const v4, 0xfffd

    .line 17
    invoke-virtual {v3, v4}, La/b/a/o/m/b$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v3

    iput-object v3, v2, La/b/a/o/m/b$a;->s:La/b/a/o/m/b$b;

    .line 18
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    return-object v0

    .line 20
    :cond_2
    :goto_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/b/a/o/m/b;

    return-object p1
.end method

.method public resetGenerators()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/i/a;

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/b/a/o/m/b;

    .line 3
    invoke-virtual {v3}, La/b/a/o/m/b;->a()V

    goto :goto_1

    .line 4
    :cond_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 5
    invoke-virtual {v1}, La/b/a/o/m/i/a;->a()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->packer:La/b/a/o/m/e;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, v0, La/b/a/o/m/e;->k:La/b/a/r/a;

    .line 9
    invoke-virtual {v0}, La/b/a/r/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/e$c;

    .line 10
    iget-object v1, v1, La/b/a/o/m/e$c;->c:La/b/a/o/i;

    .line 11
    invoke-virtual {v1}, La/b/a/o/i;->b()V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->packer:La/b/a/o/m/e;

    invoke-virtual {v0}, La/b/a/o/m/e;->a()V

    :cond_3
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    .line 14
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->pageSize:I

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->systemfont:Z

    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->setupFontGenerators(IZ)V

    return-void
.end method

.method public setupFontGenerators(IZ)V
    .locals 11

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->pageSize:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->systemfont:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->pageSize:I

    .line 3
    iput-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->systemfont:Z

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/i/a;

    .line 6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/b/a/o/m/b;

    .line 7
    invoke-virtual {v3}, La/b/a/o/m/b;->a()V

    goto :goto_1

    .line 8
    :cond_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 9
    invoke-virtual {v1}, La/b/a/o/m/i/a;->a()V

    goto :goto_0

    .line 10
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->packer:La/b/a/o/m/e;

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, v0, La/b/a/o/m/e;->k:La/b/a/r/a;

    .line 13
    invoke-virtual {v0}, La/b/a/r/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/e$c;

    .line 14
    iget-object v1, v1, La/b/a/o/m/e$c;->c:La/b/a/o/i;

    .line 15
    invoke-virtual {v1}, La/b/a/o/i;->b()V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->packer:La/b/a/o/m/e;

    invoke-virtual {v0}, La/b/a/o/m/e;->a()V

    .line 17
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPFontGenerator:La/b/a/o/m/i/a;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCFontGenerator:La/b/a/o/m/i/a;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFontGenerator:La/b/a/o/m/i/a;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->basicFontGenerator:La/b/a/o/m/i/a;

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 19
    sget-object v2, La/b/a/e;->e:La/b/a/d;

    check-cast v2, La/b/a/m/a/i;

    const-string v3, "/system/fonts/Roboto-Regular.ttf"

    invoke-virtual {v2, v3}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v2

    invoke-virtual {v2}, La/b/a/n/a;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    new-instance p2, La/b/a/o/m/i/a;

    sget-object v2, La/b/a/e;->e:La/b/a/d;

    check-cast v2, La/b/a/m/a/i;

    invoke-virtual {v2, v3}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v2

    .line 21
    invoke-direct {p2, v2, v1}, La/b/a/o/m/i/a;-><init>(La/b/a/n/a;I)V

    .line 22
    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->basicFontGenerator:La/b/a/o/m/i/a;

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    .line 23
    sget-object p2, La/b/a/e;->e:La/b/a/d;

    check-cast p2, La/b/a/m/a/i;

    const-string v2, "/system/fonts/DroidSans.ttf"

    invoke-virtual {p2, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p2

    invoke-virtual {p2}, La/b/a/n/a;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 24
    new-instance p2, La/b/a/o/m/i/a;

    sget-object v3, La/b/a/e;->e:La/b/a/d;

    check-cast v3, La/b/a/m/a/i;

    invoke-virtual {v3, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v2

    .line 25
    invoke-direct {p2, v2, v1}, La/b/a/o/m/i/a;-><init>(La/b/a/n/a;I)V

    .line 26
    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->basicFontGenerator:La/b/a/o/m/i/a;

    goto :goto_3

    .line 27
    :cond_6
    new-instance p2, La/b/a/o/m/i/a;

    sget-object v2, La/b/a/e;->e:La/b/a/d;

    check-cast v2, La/b/a/m/a/i;

    .line 28
    new-instance v3, La/b/a/m/a/h;

    iget-object v2, v2, La/b/a/m/a/i;->c:Landroid/content/res/AssetManager;

    sget-object v4, La/b/a/d$a;->b:La/b/a/d$a;

    const-string v5, "pixel_font.ttf"

    invoke-direct {v3, v2, v5, v4}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;La/b/a/d$a;)V

    .line 29
    invoke-direct {p2, v3, v1}, La/b/a/o/m/i/a;-><init>(La/b/a/n/a;I)V

    .line 30
    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->basicFontGenerator:La/b/a/o/m/i/a;

    .line 31
    :goto_3
    sget-object p2, La/b/a/e;->e:La/b/a/d;

    check-cast p2, La/b/a/m/a/i;

    const-string v2, "/system/fonts/NotoSansCJK-Regular.ttc"

    invoke-virtual {p2, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p2

    invoke-virtual {p2}, La/b/a/n/a;->a()Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_9

    .line 32
    invoke-static {}, La/b/a/e;->language()Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p2, v3, :cond_7

    const/16 v0, 0xe

    if-eq p2, v0, :cond_8

    const/4 v1, 0x2

    goto :goto_4

    :cond_7
    const/4 v1, 0x1

    .line 33
    :cond_8
    :goto_4
    new-instance p2, La/b/a/o/m/i/a;

    sget-object v0, La/b/a/e;->e:La/b/a/d;

    check-cast v0, La/b/a/m/a/i;

    invoke-virtual {v0, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v0

    invoke-direct {p2, v0, v1}, La/b/a/o/m/i/a;-><init>(La/b/a/n/a;I)V

    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPFontGenerator:La/b/a/o/m/i/a;

    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCFontGenerator:La/b/a/o/m/i/a;

    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFontGenerator:La/b/a/o/m/i/a;

    goto/16 :goto_7

    .line 34
    :cond_9
    sget-object p2, La/b/a/e;->e:La/b/a/d;

    check-cast p2, La/b/a/m/a/i;

    const-string v2, "/system/fonts/NanumGothic.ttf"

    invoke-virtual {p2, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p2

    invoke-virtual {p2}, La/b/a/n/a;->a()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 35
    new-instance p2, La/b/a/o/m/i/a;

    sget-object v3, La/b/a/e;->e:La/b/a/d;

    check-cast v3, La/b/a/m/a/i;

    invoke-virtual {v3, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v2

    .line 36
    invoke-direct {p2, v2, v1}, La/b/a/o/m/i/a;-><init>(La/b/a/n/a;I)V

    .line 37
    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFontGenerator:La/b/a/o/m/i/a;

    goto :goto_5

    .line 38
    :cond_a
    sget-object p2, La/b/a/e;->e:La/b/a/d;

    check-cast p2, La/b/a/m/a/i;

    const-string v2, "/system/fonts/NotoSansKR-Regular.otf"

    invoke-virtual {p2, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p2

    invoke-virtual {p2}, La/b/a/n/a;->a()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 39
    new-instance p2, La/b/a/o/m/i/a;

    sget-object v4, La/b/a/e;->e:La/b/a/d;

    check-cast v4, La/b/a/m/a/i;

    invoke-virtual {v4, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v2

    .line 40
    invoke-direct {p2, v2, v1}, La/b/a/o/m/i/a;-><init>(La/b/a/n/a;I)V

    .line 41
    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFontGenerator:La/b/a/o/m/i/a;

    .line 42
    sput-boolean v3, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->koreanAndroid6OTF:Z

    .line 43
    :cond_b
    :goto_5
    sget-object p2, La/b/a/e;->e:La/b/a/d;

    check-cast p2, La/b/a/m/a/i;

    const-string v2, "/system/fonts/NotoSansSC-Regular.otf"

    invoke-virtual {p2, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p2

    invoke-virtual {p2}, La/b/a/n/a;->a()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 44
    new-instance p2, La/b/a/o/m/i/a;

    sget-object v3, La/b/a/e;->e:La/b/a/d;

    check-cast v3, La/b/a/m/a/i;

    invoke-virtual {v3, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v2

    .line 45
    invoke-direct {p2, v2, v1}, La/b/a/o/m/i/a;-><init>(La/b/a/n/a;I)V

    .line 46
    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCFontGenerator:La/b/a/o/m/i/a;

    goto :goto_6

    .line 47
    :cond_c
    sget-object p2, La/b/a/e;->e:La/b/a/d;

    check-cast p2, La/b/a/m/a/i;

    const-string v2, "/system/fonts/NotoSansHans-Regular.otf"

    invoke-virtual {p2, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p2

    invoke-virtual {p2}, La/b/a/n/a;->a()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 48
    new-instance p2, La/b/a/o/m/i/a;

    sget-object v3, La/b/a/e;->e:La/b/a/d;

    check-cast v3, La/b/a/m/a/i;

    invoke-virtual {v3, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v2

    .line 49
    invoke-direct {p2, v2, v1}, La/b/a/o/m/i/a;-><init>(La/b/a/n/a;I)V

    .line 50
    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCFontGenerator:La/b/a/o/m/i/a;

    .line 51
    :cond_d
    :goto_6
    sget-object p2, La/b/a/e;->e:La/b/a/d;

    check-cast p2, La/b/a/m/a/i;

    const-string v2, "/system/fonts/NotoSansJP-Regular.otf"

    invoke-virtual {p2, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p2

    invoke-virtual {p2}, La/b/a/n/a;->a()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 52
    new-instance p2, La/b/a/o/m/i/a;

    sget-object v3, La/b/a/e;->e:La/b/a/d;

    check-cast v3, La/b/a/m/a/i;

    invoke-virtual {v3, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v2

    .line 53
    invoke-direct {p2, v2, v1}, La/b/a/o/m/i/a;-><init>(La/b/a/n/a;I)V

    .line 54
    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPFontGenerator:La/b/a/o/m/i/a;

    .line 55
    :cond_e
    sget-object p2, La/b/a/e;->e:La/b/a/d;

    check-cast p2, La/b/a/m/a/i;

    const-string v2, "/system/fonts/DroidSansFallback.ttf"

    invoke-virtual {p2, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p2

    invoke-virtual {p2}, La/b/a/n/a;->a()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 56
    new-instance v0, La/b/a/o/m/i/a;

    sget-object p2, La/b/a/e;->e:La/b/a/d;

    check-cast p2, La/b/a/m/a/i;

    invoke-virtual {p2, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p2

    .line 57
    invoke-direct {v0, p2, v1}, La/b/a/o/m/i/a;-><init>(La/b/a/n/a;I)V

    .line 58
    :cond_f
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFontGenerator:La/b/a/o/m/i/a;

    if-nez p2, :cond_10

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFontGenerator:La/b/a/o/m/i/a;

    .line 59
    :cond_10
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCFontGenerator:La/b/a/o/m/i/a;

    if-nez p2, :cond_11

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCFontGenerator:La/b/a/o/m/i/a;

    .line 60
    :cond_11
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPFontGenerator:La/b/a/o/m/i/a;

    if-nez p2, :cond_12

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPFontGenerator:La/b/a/o/m/i/a;

    .line 61
    :cond_12
    :goto_7
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->basicFontGenerator:La/b/a/o/m/i/a;

    if-eqz p2, :cond_13

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->basicFonts:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_13
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFontGenerator:La/b/a/o/m/i/a;

    if-eqz p2, :cond_14

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFonts:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_14
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCFontGenerator:La/b/a/o/m/i/a;

    if-eqz p2, :cond_15

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->SCFonts:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_15
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPFontGenerator:La/b/a/o/m/i/a;

    if-eqz p2, :cond_16

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->fonts:Ljava/util/HashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->JPFonts:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_16
    new-instance p2, La/b/a/o/m/e;

    sget-object v5, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 66
    new-instance v10, La/b/a/o/m/e$a;

    invoke-direct {v10}, La/b/a/o/m/e$a;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    move v3, p1

    move v4, p1

    invoke-direct/range {v2 .. v10}, La/b/a/o/m/e;-><init>(IILa/b/a/o/g$c;IZZZLa/b/a/o/m/e$b;)V

    .line 67
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->packer:La/b/a/o/m/e;

    return-void
.end method

.method public updateSystemUI()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$3;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
