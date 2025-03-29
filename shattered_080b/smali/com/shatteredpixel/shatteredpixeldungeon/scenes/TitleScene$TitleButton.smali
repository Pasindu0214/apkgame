.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$TitleButton;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;
.source "TitleScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleButton"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->GREY_BUTTON_TR:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    const/16 v1, 0x9

    invoke-direct {p0, v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;Ljava/lang/String;I)V

    return-void
.end method
