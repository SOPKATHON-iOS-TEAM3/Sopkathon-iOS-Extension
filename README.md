[](https://www.notion.so/fa644bede16f4338ada86ec3234aac38?pvs=21)

# Install

<img width="843" alt="image" src="https://github.com/SOPKATHON-iOS-TEAM3/Sopkathon-iOS-Extension/assets/73978827/4a4ca63c-fcef-4ccf-b77b-a34ec6da1f09">

# How to use
```swift
import Sopkathon-iOS-Extension

CGPoint.topLeft
```
사용할 파일 최상단에, 해당 패키지를 import후 사용하면 됩니다. 

## V1.0.0

### UIView Extension

- **addSubviews** / 여러개의 뷰 리스트를 한번에 addsubview
- **removeAllSubViews** / 자식 뷰들을 모두 superView에서 제거
- **drawShadow** / 해당 뷰에 그림자 이펙트 추가
- **removeShadow** / 해당 뷰에 그림자 이펙트 제거
- **addGradient** / 해당 뷰에 그라디언트 추가
- **removeGradient** / 해당 뷰에 그라디언트 제거

### UITextField Extension

**addLeftPadding, addRightPadding** / 텍스트 필드 좌/우 패딩 추가

### UIStackView

addArrangeSubviews / 스택뷰에 여러개의 뷰 리스트를 한번에 addArrangeSubview

### UIButton

setBackgroundColor / 버튼 백그라운드컬러를, UIControl.State 상태에 따라 전환

주의) 해당 함수는, 버튼 백그라운드 색의 이미지객체를 생성하여, 상태에 따른 백그라운드 색의 눈속임을 진행하는 함수입니다. 

따라서, 기존에 BackgroundImage에 대한 옵션을 사용하셨을 경우 사용에 주의하셔야 합니다

### String

setAttributedText / 텍스트의 Atrributed Option을 설정

### NSObject

[String Variable] reuseIdentifier / 해당 클래스의 이름을 반환

### Collection

**subscript**(safe index: Index) / 리스트의 indexOutOfRange Exeption을 방지해줍니다. 

주의) 이 safe키워드를 사용하여 인덱스에 접근할 경우, 해당 인덱스의 아이템이 존재하지 않을때 nil값을 반환합니다. 
indexOutOfRange Exeption을 통한 앱 강제 종료를 막기 위해서 사용하는 것이지, 근본적인 해결책은 아닙니다.

### CGPoint

topLeft ~ bottomRight / CGPoint값을 명시적으로 선언하여, 특정 rect의 포인트값을 명시적으로 제공합니다.
