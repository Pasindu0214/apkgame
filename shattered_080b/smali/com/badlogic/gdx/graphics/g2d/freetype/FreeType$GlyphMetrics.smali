.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlyphMetrics"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;-><init>(J)V

    return-void
.end method

.method public static native getHeight(J)I
.end method

.method public static native getHoriAdvance(J)I
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight(J)I

    move-result v0

    return v0
.end method
