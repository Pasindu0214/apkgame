.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;
.source "RedButton.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->RED_BUTTON:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    const/16 v1, 0x9

    invoke-direct {p0, v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->RED_BUTTON:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-direct {p0, v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;Ljava/lang/String;I)V

    return-void
.end method
